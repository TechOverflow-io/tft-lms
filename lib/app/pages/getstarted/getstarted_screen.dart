import 'package:flutter/material.dart';
import './widgets/getstarted_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/GetStartedBackground.png',
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              SizedBox(
                height: height * 0.27,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.08,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/tft_logo.png',
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text("TFT's",
                        style: TextStyle(
                            color: Color.fromARGB(255, 48, 46, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    const Text("Student Portal",
                        style: TextStyle(
                            color: Color.fromARGB(255, 48, 46, 46),
                            fontSize: 15)),
                    const Text("Application",
                        style: TextStyle(
                            color: Color.fromARGB(255, 48, 46, 46),
                            fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: height * 0.1,
              right: width * 0.15,
              child: const GetStaetedButton())
        ],
      ),
    );
  }
}
