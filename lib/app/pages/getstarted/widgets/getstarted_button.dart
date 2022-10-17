import 'package:flutter/material.dart';

import '../../login/login_screen.dart';

class GetStaetedButton extends StatelessWidget {
  const GetStaetedButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: width * 0.004,
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
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Login()));
          },
          child: const Text('Get Started')),
    );
  }
}
