// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lms/app/pages/login/login_screen.dart';
import '../../register/register_screen.dart';
import 'forgot_button.dart';
import 'forgot_textfield.dart';

class ForgotForm extends StatefulWidget {
  const ForgotForm({super.key});

  @override
  State<ForgotForm> createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: hight * 0.45,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05),
            child: const Text("Forgot Password",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ),
          SizedBox(
            height: hight * 0.04,
          ),
          const ForgotTextField(
            hintText: 'Email',
          ),
          SizedBox(
            height: hight * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Text("Go back to login \n",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(72, 244, 255, 1)))),
                const ForgotButton(),
              ],
            ),
          ),
          SizedBox(
            height: hight * 0.07,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.3),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(fontSize: 12, color: Colors.white)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    },
                    child: const Text("Register",
                        maxLines: 2,
                        style: TextStyle(fontSize: 13, color: Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
