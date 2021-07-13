import 'package:flutter/material.dart';
import 'package:kolo_purse/src/utils/constants.dart';
import 'package:kolo_purse/src/utils/styles.dart';

class SignUpTextField extends StatelessWidget {
  final String labelText;
  const SignUpTextField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: br,
          focusedBorder: br,
          enabledBorder: br,
          errorBorder: br,
          focusedErrorBorder: br,
        ),
      ),
      child: TextFormField(
        style: textS,
        // keyboardType: keyboardType ?? TextInputType.number,
        // onChanged: onChanged,
        // validator: validator,
        // obscureText: obscure ?? false,
        // onEditingComplete: onEditingComplete,
        // onSaved: onSaved,
        decoration: InputDecoration(
          hintText: labelText,
          hintStyle: textS,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          // suffixIcon: suffixWidget ?? Text(""),
          // hintText: hintText,
          // hintStyle: hintTextStyle,
        ),
      ),
    );
  }
}

class LogInFields extends StatelessWidget {
  final String label;
  final bool obscure;

  const LogInFields({required this.label, required this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label",
            style: TextStyle(
              fontSize: 18,
              color: kPrimaryColor1,
              fontFamily: "Qs",
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kWhite,
            ),
            child: Center(
              child: TextFormField(
                  validator: (val) =>
                      (!val!.contains("@")) ? "Input valid credentials" : null,
                  obscureText: obscure,
                  style: textS.copyWith(color: Colors.black),
                  decoration: InputDecoration.collapsed(hintText: "")),
            ),
          )
        ],
      ),
    );
  }
}
