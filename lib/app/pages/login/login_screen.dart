import 'package:flutter/material.dart';
import '../forgotPassword/forgot_screen.dart';
import '../register/register_screen.dart';
import 'widgets/form_textfield.dart';
import 'widgets/login_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/LoginBackground.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              padding: EdgeInsets.only(left: width * 0.07, top: height * 0.38),
              child: const Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ),
            Container(
                padding: EdgeInsets.only(
                    right: width * 0.02,
                    left: width * 0.02,
                    top: height * 0.45),
                child: Column(children: [
                  const LoginFormTextField(
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const LoginFormTextField(
                    hintText: 'Passwords',
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          },
                          child: const Text("Forget Password ? \n",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white))),
                      const LoginButton(),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  const Text("Don't have an ?",
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  SizedBox(
                    height: height * 0.00002,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: const Text("Registerses",
                          maxLines: 2,
                          style: TextStyle(fontSize: 13, color: Colors.white))),
                ])),
          ]),
        ),
      ),
    );
  }
}
