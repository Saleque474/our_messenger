// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:our_messenger/screens/authscreens/wrapper.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    AuthPageState authPageState = Provider.of<AuthPageState>(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Color(0xFFbfb6e0),
        body: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(16),
              height: constraints.maxHeight * 0.7,
              width: constraints.maxWidth,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Get Started",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 27,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Name',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DefaultTextStyle(
                      style: TextStyle(fontSize: 11, color: Colors.black),
                      child: Row(
                          //crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Radio(
                              groupValue: null,
                              // ignore: unnecessary_question_mark, prefer_void_to_null
                              onChanged: (Null? value) {},
                              value: null,
                            ),
                            Text("Agree to the "),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              onPressed: () {},
                              child: Text("Terms of services "),
                            ),
                            Text("and "),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              onPressed: () {},
                              child: Text("Privacy Policy"),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.blue[900],
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.blue[900],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[900],
                                decoration: TextDecoration.underline),
                          ),
                          onPressed: () {
                            authPageState.setValue = AuthPageStateType.SignIn;
                          },
                          child: Text("Sign In"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
