import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:our_messenger/screens/authscreens/wrapper.dart';

import 'our_widget/error_scren.dart';
import 'our_widget/loading_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MessengerApp());
}

class MessengerApp extends StatefulWidget {
  const MessengerApp({Key? key}) : super(key: key);

  @override
  State<MessengerApp> createState() => _MessengerAppState();
}

class _MessengerAppState extends State<MessengerApp> {
  late Future<FirebaseApp> initilize;
  @override
  void initState() {
    initilize = Firebase.initializeApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: initilize,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const MaterialApp(
              home: Wrappper(),
            );
          }
          if (snapshot.hasError) {
            return const MaterialApp(
              home: ErrorScreen(),
            );
          }
          return const MaterialApp(
            home: LoadingScreen(),
          );
        });
  }
}
