import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/appbar.dart';
import 'widgets/course.dart';
import 'widgets/drawer.dart';
import 'widgets/home.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      key: _scaffoldKey,
      appBar: AppBar(
        title: AppbarTital(
          text1: "Jayive",
          text2: "19-02031-1",
        ),
        backgroundColor: Colors.white,

        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/tft_logo.png'),
            ),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
        ),
        actions: const <Widget>[
          CalenderIcon(),
          ChatIcon(),
          NotificationIcon(),
        ], //<Widget>[]
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const HomeWidget1(),
          const HomeWidget2(),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'My Course',
              style: GoogleFonts.andika(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 16),
            ),
          ),
          StudentCourse(imageurl: "assets/images/course1.png"),
          StudentCourse(imageurl: "assets/images/course2.png"),
          StudentCourse(imageurl: "assets/images/course3.png"),
          StudentCourse(imageurl: "assets/images/course4.png"),
          StudentCourse(imageurl: "assets/images/course5.png"),
          StudentCourse(imageurl: "assets/images/course6.png"),
        ]),
      ),
      drawer: const StudentDrawer(),
    );
  }
}
