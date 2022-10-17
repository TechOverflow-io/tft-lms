import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      key: _scaffoldKey,
      appBar: AppBar(
        title: AppbarTital(text1: "| Profile"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/tft_logo.png'),
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: const <Widget>[
          CalenderIcon(),
          ChatIcon(),
          NotificationIcon(),
        ], //<Widget>[]
        elevation: 1.0,
      ),
      body: Stack(children: [
        Image.asset(
          'assets/images/studentProfile.png',
          fit: BoxFit.fill,
        ),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 20)
              .add(const EdgeInsets.only(top: 55)),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jayvie Balili",
                        style: GoogleFonts.allertaStencil(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(41, 41, 41, 1.0),
                            fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Student No",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "19-02031-t",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Course",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "BSCS",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Year & Sec",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "2ND Year, J2019",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color.fromRGBO(243, 243, 243, 1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Birth Date",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "14-21-2001",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gender",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "Male",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nationality",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "Pakistani",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color.fromRGBO(243, 243, 243, 1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "F2018065117@umt.edu.pk",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "03424018762",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Adress",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(115, 115, 115, 1.0),
                            fontSize: 11),
                      ),
                      Text(
                        "Lahore Pakistan",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(45, 45, 45, 1.0),
                            fontSize: 13),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
        const Positioned(
          right: 60,
          top: 70,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/tft_logo.png'),
          ),
        ),
      ]),
      drawer: const StudentDrawer(),
    );
  }
}
