import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/app/pages/login/login_screen.dart';
import 'package:lms/app/pages/student/student%20screen/student_course.dart';
import '../student screen/student_option.dart';
import '../student screen/student_profile_screen.dart';
import '../student screen/student_todo.dart';
import '../student_screen.dart';

class StudentDrawer extends StatelessWidget {
  const StudentDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 220,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/course4.png',
            ),
            Positioned(
              top: 75,
              left: 40,
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/tft_logo.png'),
                  ),
                  Text(
                    "Jayvie Balili",
                    style: GoogleFonts.allertaStencil(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(41, 41, 41, 1.0),
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "BSCS | 2nd Year | J2019",
                    style: GoogleFonts.allertaStencil(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(115, 115, 115, 1.0),
                        fontSize: 10),
                  )
                ],
              ),
            ),
            Positioned(
              top: 180,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Student()));
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 20.0,
                      color: Color.fromRGBO(51, 190, 191, 1),
                    ),
                    label: Text(
                      'Home',
                      style: GoogleFonts.andika(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(26, 26, 26, 1.0),
                          fontSize: 16),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentProfile()));
                    },
                    icon: const Icon(
                      Icons.person,
                      size: 20.0,
                      color: Color.fromRGBO(51, 190, 191, 1),
                    ),
                    label: Text(
                      'Person',
                      style: GoogleFonts.andika(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(26, 26, 26, 1.0),
                          fontSize: 16),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentCourse()));
                    },
                    icon: const Icon(
                      Icons.center_focus_strong_outlined,
                      size: 20.0,
                      color: Color.fromRGBO(51, 190, 191, 1),
                    ),
                    label: Text(
                      'Courses',
                      style: GoogleFonts.andika(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(26, 26, 26, 1.0),
                          fontSize: 16),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentTodo()));
                    },
                    icon: const Icon(
                      Icons.calendar_today,
                      size: 20.0,
                      color: Color.fromRGBO(51, 190, 191, 1),
                    ),
                    label: Text(
                      'To Do',
                      style: GoogleFonts.andika(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(26, 26, 26, 1.0),
                          fontSize: 16),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentOption()));
                    },
                    icon: const Icon(
                      Icons.settings,
                      size: 20.0,
                      color: Color.fromRGBO(51, 190, 191, 1),
                    ),
                    label: Text(
                      'Options',
                      style: GoogleFonts.andika(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(26, 26, 26, 1.0),
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              bottom: 15,
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                icon: const Icon(
                  Icons.logout,
                  size: 20.0,
                  color: Color.fromRGBO(85, 45, 116, 1),
                ),
                label: Text(
                  'Log out',
                  style: GoogleFonts.andika(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(26, 26, 26, 1.0),
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ));
  }
}
