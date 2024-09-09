import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:englishapp/constant.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Score',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              CircleAvatar(
                child: Text(
                  '$result/$questionLength',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
                radius: 60.0,
                backgroundColor: Colors.white70,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                result == questionLength / 2
                    ? 'Almost There!'
                    : result < questionLength / 2
                        ? 'You are unlucky :>'
                        : 'Nice Work!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              const SizedBox(height: 25.0),
              GestureDetector(
                onTap: onPressed,
                child: const Text(
                  'Try Again',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 20.0, letterSpacing: 1.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
