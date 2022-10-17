import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TodoTask extends StatelessWidget {
  String imageurl;
  String textl;
  String text2;
  String text3;
  Color color;
  IconData icon;
  TodoTask({
    super.key,
    required this.imageurl,
    required this.textl,
    required this.text2,
    required this.text3,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              imageurl,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.07),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textl,
                style: GoogleFonts.andika(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 27, 27, 1.0),
                    fontSize: 10),
              ),
              Text(
                text2,
                style: GoogleFonts.andika(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(124, 124, 124, 1.0),
                    fontSize: 9),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                icon,
                color: const Color.fromRGBO(0, 0, 0, 1.0),
                // size: 15,
              ),
              Text(
                text3,
                style: GoogleFonts.andika(
                    fontWeight: FontWeight.w600, color: color, fontSize: 7),
              ),
            ],
          )
        ],
      ),
    );
  }
}
