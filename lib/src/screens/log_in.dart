import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kolo_purse/src/providers/auth.dart';
import 'package:kolo_purse/src/screens/home_screen.dart';

import 'package:kolo_purse/src/screens/sign_up.dart';
import 'package:kolo_purse/src/utils/constants.dart';
import 'package:kolo_purse/src/utils/styles.dart';
import 'package:kolo_purse/src/widget/button.dart';
import 'package:kolo_purse/src/widget/textFields.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, model, _) => Scaffold(
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
              child: Stack(
                children: [
                  BubblesTop(
                    bColor: kYellowColor,
                    left: -250,
                    top: -250,
                    bottom: 0.0,
                    right: 0.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 38,
                      vertical: 20,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset("assets/images/logo.png")),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hi",
                                style: TextStyle(
                                  color: kPrimaryColor1,
                                  fontSize: 40.0,
                                  fontFamily: "Qs",
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "welcome!",
                                style: TextStyle(
                                  color: kPrimaryColor2,
                                  fontSize: 40.0,
                                  fontFamily: "Qs",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          LogInFields(
                            obscure: false,
                            label: "Email Address",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          LogInFields(
                            obscure: true,
                            label: "Password",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonK(
                            kButtonColor: kPrimaryColor1,
                            onPressed: () {
                              model
                                  .login(username: "", password: "raksjavac")
                                  .then((value) {
                                if (value == "Authenticated Successfully!") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              KoloPurseHome()));
                                  Fluttertoast.showToast(
                                      msg: "Sucessfully loggedIn");
                                } else {
                                  Fluttertoast.showToast(
                                    msg: "Invalid credentials",
                                  );
                                }
                              });
                              // if (!_formKey.currentState!.validate()) {
                              //   print("form validated");
                              // }
                            },
                            labelColor: Colors.white,
                            buttonLabel: "Login",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dont have a KoloPurse account? ",
                                style: textS.copyWith(
                                    fontSize: 15, color: Colors.black),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign up",
                                  style: textS.copyWith(
                                    fontSize: 15,
                                    color: kPrimaryColor1,
                                  ),
                                ),
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BubblesTop extends StatelessWidget {
  final double left;
  final double top;
  final double bottom;
  final double right;
  final Color bColor;

  const BubblesTop(
      {required this.left,
      required this.top,
      required this.bColor,
      required this.bottom,
      required this.right});
// -250
// -250
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: bColor,
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}

class Bubbles extends StatelessWidget {
  final double left;
  final double top;
  final double bottom;
  final double right;
  final Color bColor;

  const Bubbles(
      {required this.left,
      required this.top,
      required this.bColor,
      required this.bottom,
      required this.right});
// -250
// -250
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: bColor,
          borderRadius: BorderRadius.circular(200),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
              margin: EdgeInsets.only(
                bottom: 60,
                right: 30,
              ),
              child: Image.asset(
                "assets/images/logo.png",
              )),
        ),
      ),
    );
  }
}
