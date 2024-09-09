import 'package:englishapp/constant.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {Key? key,
      required this.question,
      required this.totalQuestion,
      required this.indexAction})
      : super(key: key);

  final String question;
  final int indexAction;
  final int totalQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Question ${indexAction + 1}/$totalQuestion: $question',
        style: const TextStyle(
          fontSize: 24.0,
          color: impartial,
        ),
      ),
    );
  }
}
