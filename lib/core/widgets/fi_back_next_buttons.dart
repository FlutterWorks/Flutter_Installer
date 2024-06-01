import 'package:flutter/material.dart';

class FIBackNextButtons extends StatelessWidget {
  const FIBackNextButtons({
    super.key,
    required this.onBackPressed,
    required this.onNextPressed,
  });

  final void Function()? onBackPressed;
  final void Function()? onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: onBackPressed,
          child: Text(
            "Back",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: onNextPressed,
          child: Text(
            "Next",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
