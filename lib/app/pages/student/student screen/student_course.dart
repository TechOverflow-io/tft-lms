import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/appbar.dart';
import '../widgets/course.dart';
import '../widgets/drawer.dart';

class StudentCourse extends StatefulWidget {
  const StudentCourse({super.key});

  @override
  State<StudentCourse> createState() => _StudentCourseState();
}

class _StudentCourseState extends State<StudentCourse> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: AppbarTital(text1: "| Course", text2: " "),
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
        ],
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: SingleChildScrollView(
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              shadowColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Student:",
                            style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(129, 129, 129, 1.0),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "19-02031-t",
                            style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 1.0),
                                fontSize: 12),
                          ),
                          const Spacer(),
                          Text(
                            "9 Courses",
                            style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 1.0),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Course(
                      imageurl2: "assets/images/cor1.png",
                      text1: "Programming Language",
                      text2: "PL 101",
                    ),
                    Course(
                      imageurl2: "assets/images/cor2.png",
                      text1: "Physical Education 4",
                      text2: "PE 4",
                    ),
                    Course(
                      imageurl2: "assets/images/cor3.png",
                      text1: "Operating System",
                      text2: "OS 101",
                    ),
                    Course(
                      imageurl2: "assets/images/cor4.png",
                      text1: "Human Computer Interaction",
                      text2: "HCI 101",
                    ),
                    Course(
                      imageurl2: "assets/images/cor5.png",
                      text1: "Philippine Popular Culture",
                      text2: "GEE32",
                    ),
                    Course(
                      imageurl2: "assets/images/cor6.png",
                      text1: "Logic Design",
                      text2: "AL 103",
                    ),
                    Course(
                      imageurl2: "assets/images/cor7.png",
                      text1: "Ethics / Etika",
                      text2: "GE 8",
                    ),
                    Course(
                      imageurl2: "assets/images/cor7.png",
                      text1: "Science Technology and Society",
                      text2: "GE 7",
                    ),
                    Course(
                      imageurl2: "assets/images/cor8.png",
                      text1: "Architecture and Organization",
                      text2: "AR 101",
                    ),
                  ],
                ),
              )),
        ),
      ),
      drawer: const StudentDrawer(),
    );
  }
}
