import 'package:flutter/material.dart';

class LoginFormTextField extends StatefulWidget {
  final String hintText;
  const LoginFormTextField({super.key, required this.hintText});

  @override
  State<LoginFormTextField> createState() => _LoginFormTextFieldState();
}

class _LoginFormTextFieldState extends State<LoginFormTextField> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            border: const OutlineInputBorder(),
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
