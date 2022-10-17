import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AppbarTital extends StatelessWidget {
  String? text1;
  String? text2;

  AppbarTital({super.key, this.text1, this.text2 = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1!,
          style: GoogleFonts.allertaStencil(
              fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14),
        ),
        Text(
          text2!,
          style: GoogleFonts.allertaStencil(
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(139, 139, 139, 1.0),
              fontSize: 11),
        ),
      ],
    );
  }
}

class CalenderIcon extends StatelessWidget {
  const CalenderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child:
          SizedBox(width: 50, child: Image.asset("assets/images/calender.png")),
    );
  }
}

class ChatIcon extends StatelessWidget {
  const ChatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: SizedBox(
          width: 50,
          child: Image.asset(
            "assets/images/chat.png",
          )),
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: SizedBox(width: 50, child: Image.asset("assets/images/bell.png")),
    );
  }
}
