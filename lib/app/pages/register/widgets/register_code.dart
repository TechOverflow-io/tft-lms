import 'package:flutter/material.dart';

class CodeField extends StatelessWidget {
  const CodeField({super.key});
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
    return Container(
      height: hight * 0.09,
      child: const TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          border: OutlineInputBorder(),
          hintText: 'Course_code',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
