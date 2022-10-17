import 'package:flutter/material.dart';

class ForGotImage extends StatelessWidget {
  const ForGotImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/ForgotPassword.png',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fill,
    );
  }
}
