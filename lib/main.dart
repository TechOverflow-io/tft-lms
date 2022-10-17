import 'package:flutter/material.dart';
import 'app/pages/getstarted/getstarted_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //  initialRoute: '/',
      // routes: {

      // Shazaib Sarwar
      //   // When navigating to the "/" route, build the getstarted widget.
      //   '/': (context) => const GetStarted(),
      //   // When navigating to the "/login" route, build the login widget.
      //   '/login': (context) => const Login(),
      // },
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
