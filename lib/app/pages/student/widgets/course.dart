import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../student screen/student_navigationbar.dart';

// ignore: must_be_immutable
class StudentCourse extends StatelessWidget {
  String imageurl;
  StudentCourse({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const StudentNavigationBar()));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          // elevation: 2.5,
          margin: const EdgeInsets.all(3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageurl,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0)
                        .add(const EdgeInsets.only(bottom: 5.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Programming Language',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'PL 101',
                      style: TextStyle(
                          color: Color.fromRGBO(139, 139, 139, 1.0),
                          fontSize: 13),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Course extends StatelessWidget {
  String imageurl2;
  String text1;
  String text2;
  Course(
      {super.key,
      required this.imageurl2,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(children: [
          // Container(
          //   height: 50,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage(imageurl2), fit: BoxFit.cover),
          //   ),
          //   child: null, // Foreground widget here
          // ),

          Image.asset(
            imageurl2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: GoogleFonts.andika(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 1.0),
                      fontSize: 13),
                ),
                Text(
                  text2,
                  style: GoogleFonts.andika(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(203, 203, 203, 1.0),
                      fontSize: 12),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
