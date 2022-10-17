import 'package:flutter/material.dart';

class ForgotButton extends StatelessWidget {
  const ForgotButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.45,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(85, 45, 116, 1)),
              padding: MaterialStateProperty.all(const EdgeInsets.all(17)),
              textStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ))),
          onPressed: () {},
          child: const Text('Reset Password')),
    );
  }
}
