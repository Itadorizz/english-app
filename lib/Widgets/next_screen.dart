import 'package:flutter/material.dart';
import 'package:englishapp/constant.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key, required this.nextQuestion}) : super(key: key);
  final VoidCallback nextQuestion;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: impartial,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: const Text(
          "Next Question",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
