import 'package:flutter/material.dart';

class ButtonK extends StatelessWidget {
  final Color kButtonColor;
  final String buttonLabel;
  final Color labelColor;
  final VoidCallback onPressed;
  const ButtonK(
      {required this.kButtonColor,
      required this.buttonLabel,
      required this.labelColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 60,
        color: kButtonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            "$buttonLabel",
            style: TextStyle(
              fontFamily: "Qs",
              color: labelColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}
