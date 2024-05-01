import 'package:flutter/material.dart';

class QuestionAnswerTile extends StatelessWidget {
  const QuestionAnswerTile({
    super.key,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Q: $question",
      ),
      subtitle: Text(
        "A: $answer",
      ),
    );
  }
}
