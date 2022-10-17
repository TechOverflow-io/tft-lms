import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import 'widgets/Register_background.dart';
import 'widgets/register_button.dart';
import 'widgets/register_code.dart';
import 'widgets/register_email.dart';
import 'widgets/register_password.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          const RegisterImage(),
          Positioned(
            // bottom: MediaQuery.of(context).size.height * 0.1,
            top: hight * 0.35,
            left: width * 0.07,
            child: const Text("Register",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ),
          Positioned(
              bottom: hight * 0.44,
              left: width * 0,
              right: width * 0,
              child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  // ignore: avoid_unnecessary_containers
                  child: RegisterEmail())),
          Positioned(
              bottom: hight * 0.34,
              left: width * 0,
              right: width * 0,
              child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  // ignore: avoid_unnecessary_containers
                  child: RegisterPassword())),
          Positioned(
              bottom: hight * 0.24,
              left: width * 0,
              right: width * 0,
              child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  // ignore: avoid_unnecessary_containers
                  child: CodeField())),
          Positioned(
              bottom: hight * 0.17,
              right: width * 0.06,
              child: const RegisterButton()),
          Positioned(
              bottom: hight * 0.08,
              left: width * 0.30,
              child: const Text("Already have an account?",
                  style: TextStyle(fontSize: 12, color: Colors.white))),
          Positioned(
            bottom: hight * 0.01,
            left: width * 0.40,
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: const Text("Login",
                    maxLines: 2,
                    style: TextStyle(fontSize: 13, color: Colors.white))),
          )
        ]),
      ),
    );
  }
}
