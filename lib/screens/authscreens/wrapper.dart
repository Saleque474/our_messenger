// ignore_for_file: prefer_const_constructors, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:our_messenger/screens/authscreens/sign_up.dart';
import 'package:our_messenger/screens/home/home.dart';
import 'package:provider/provider.dart';

import 'sign_in.dart';

enum AuthPageStateType { SignIn, SignUp, Home }

class AuthPageState extends ChangeNotifier {
  AuthPageStateType _value = AuthPageStateType.SignIn;
  AuthPageStateType get value => _value;
  set setValue(AuthPageStateType authPageStateType) {
    _value = authPageStateType;
    notifyListeners();
  }
}

class Wrappper extends StatefulWidget {
  const Wrappper({Key? key}) : super(key: key);

  @override
  State<Wrappper> createState() => _WrappperState();
}

class _WrappperState extends State<Wrappper> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthPageState>.value(
      value: AuthPageState(),
      builder: (context, child) {
        AuthPageState authPageState = Provider.of<AuthPageState>(context);
        switch (authPageState.value) {
          case AuthPageStateType.SignIn:
            return Scaffold(
              body: SignInScreen(),
            );

          case AuthPageStateType.SignUp:
            return Scaffold(
              body: SignUpScreen(),
            );

          case AuthPageStateType.Home:
            return Scaffold(
              body: Home(),
            );
        }
      },
    );
  }
}
