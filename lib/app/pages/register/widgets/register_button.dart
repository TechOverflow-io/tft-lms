import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.35,
      height: hight * 0.09,
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
              padding: MaterialStateProperty.all(const EdgeInsets.all(6)),
              textStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ))),
          onPressed: () {},
          child: const Text('Register')),
    );
  }
}
