// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:our_messenger/screens/authscreens/wrapper.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    AuthPageState authPageState = Provider.of<AuthPageState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              authPageState.setValue = AuthPageStateType.SignIn;
            },
            child: Text("Sign Out")),
      ),
    );
  }
}
