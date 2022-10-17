import 'package:flutter/material.dart';

class RegisterEmail extends StatelessWidget {
  const RegisterEmail({super.key});
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
    return Container(
      height: hight * 0.09,
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          border: OutlineInputBorder(),
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
