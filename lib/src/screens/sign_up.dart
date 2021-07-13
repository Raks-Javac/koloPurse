import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kolo_purse/src/providers/auth.dart';
import 'package:kolo_purse/src/screens/log_in.dart';
import 'package:kolo_purse/src/utils/constants.dart';
import 'package:kolo_purse/src/utils/styles.dart';
import 'package:kolo_purse/src/widget/button.dart';
import 'package:kolo_purse/src/widget/textFields.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      body: SafeArea(
        child: Consumer<AuthProvider>(
          builder: (context, model, _) => Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
              colors: [
                kPrimaryColor1,
                kPrimaryColor2,
              ],
              stops: [0.0, 1.0],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            )),
            child: Stack(
              children: [
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
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          "Create Account",
                          style: textS.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SignUpTextField(
                          labelText: "FirstName",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SignUpTextField(
                          labelText: "Email Password",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SignUpTextField(
                          labelText: "Phone Number",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SignUpTextField(
                          labelText: "Password",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SignUpTextField(
                          labelText: "Confirm Password",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonK(
                          kButtonColor: Colors.white,
                          buttonLabel: "Create Account",
                          labelColor: kPrimaryColor1,
                          onPressed: () {
                            model
                                .register(
                              fullname: "kudus",
                              accountType: "personal",
                              email: "rufaikudus@gmail.com",
                              phone: "0812712555",
                              password: "raksjavac",
                            )
                                .then((value) {
                              if (value == "Account Created Successfully!") {
                                print("navigating to loginPage");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogInScreen()));
                                Fluttertoast.showToast(
                                    msg: "Account created successfully");
                              } else {
                                print("something went wrong");
                                Fluttertoast.showToast(
                                    msg:
                                        "something went wrong, Try again later");
                              }
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Bubbles(
                  bColor: Colors.white,
                  left: -190,
                  top: -250,
                  bottom: 0,
                  right: 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
