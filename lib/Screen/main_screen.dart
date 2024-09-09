import 'package:englishapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:englishapp/models/question_model.dart';
import 'package:englishapp/Widgets/question_widget.dart';
import 'package:englishapp/Widgets/next_screen.dart';
import 'package:englishapp/Widgets/option_card.dart';
import 'package:englishapp/Widgets/result_box.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<Question> _questions = [
    Question(
        id: '10',
        title: 'She _____ her dog everyday',
        options: {
          'To feed': false,
          'Feed': false,
          'Feeds': true,
          'Feeding': false
        }),
    Question(
        id: '10',
        title: 'I ____ always ____ to the dentist',
        options: {
          'Do not, go': false,
          'Does not, go': true,
          'Do not, went': false,
          'Does not, went': false
        }),
    Question(
        id: '10',
        title: 'I __________In Solo last week.',
        options: {'Were': false, 'Was': true, 'Am': false, 'Is': false}),
    Question(
        id: '10',
        title: 'Mr. Angga _____________Mr. Joe in the afternoon.',
        options: {
          'Meet': false,
          'Have met': false,
          'Has met': true,
          'Met': false
        }),
    Question(
        id: '10',
        title: 'She is dancing now, but she....take a rest soon.',
        options: {'Doesnt': false, 'Did': false, 'Will': true, 'Can': false}),
    Question(
        id: '10',
        title: 'They....a cup of coffee, but chocolate.',
        options: {
          'Are not drinking': false,
          'Is not collecting': true,
          'Are not collecting': false,
          'Is not drinking': false
        }),
  ];
  int index = 0;
  int score = 0;
  bool isClicked = false;
  bool isSelected = false;

  void nextQuestion() {
    if (index == _questions.length - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) =>
              ResultBox(
                result: score,
                questionLength: _questions.length,
                onPressed: tryAgain,
              ));
    } else {
      if (isClicked) {
        setState(() {
          index++;
          isClicked = false;
          isSelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Soal ini wajib dijawab'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  void checkAnswerUpdate(bool value) {
    if (isSelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isClicked = true;
        isSelected = true;
      });
    }
  }

  void tryAgain() {
    setState(() {
      index = 0;
      score = 0;
      isClicked = false;
      isSelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('English App'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Nilai: $score',
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
              indexAction: index,
              question: _questions[index].title,
              totalQuestion: _questions.length,
            ),
            const Divider(
              color: impartial,
            ),
            const SizedBox(height: 5.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < _questions[index].options.length; i++)
                      GestureDetector(
                        onTap: () =>
                            checkAnswerUpdate(
                                _questions[index].options.values.toList()[i]),
                        child: OptionCard(
                          option: _questions[index].options.keys.toList()[i],
                          color: isClicked
                              ? _questions[index].options.values.toList()[i] ==
                              true
                              ? correct
                              : wrong
                              : impartial,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: NextScreen(
                nextQuestion: nextQuestion,
              ),
            ),
            const SizedBox(height: 16.0), // Add some padding below the options
          ],
        ),
      ),
    );
  }
}