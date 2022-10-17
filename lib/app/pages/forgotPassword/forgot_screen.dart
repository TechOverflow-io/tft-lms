import 'package:flutter/material.dart';

import 'widgets/forgot_background.dart';
import 'widgets/forgot_form.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          const ForGotImage(),
          Positioned(height: hight, width: width, child: const ForgotForm()),
        ]),
      ),
    );
  }
}
