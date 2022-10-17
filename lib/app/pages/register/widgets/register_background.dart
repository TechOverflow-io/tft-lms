// ignore_for_file: file_names
import 'package:flutter/material.dart';

class RegisterImage extends StatelessWidget {
  const RegisterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/RegisterBackground.png',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fill,
    );
  }
}
