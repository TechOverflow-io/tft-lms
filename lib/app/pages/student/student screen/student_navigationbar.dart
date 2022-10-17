import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/course_assignment.dart';
import '../widgets/course_material.dart';
import '../widgets/course_student.dart';
import '../widgets/drawer.dart';

class StudentNavigationBar extends StatefulWidget {
  const StudentNavigationBar({super.key});

  @override
  State<StudentNavigationBar> createState() => _StudentNavigationBarState();
}

class _StudentNavigationBarState extends State<StudentNavigationBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const CourseMaterail(),
    const StudentAssignment(),
    const CourseStudentList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        ],
        elevation: 1.0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: const StudentDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Course",
              icon: Icon(
                Icons.book,
                color: Color.fromRGBO(186, 186, 186, 1),
              ),
            ),
            BottomNavigationBarItem(
              label: "Assignment",
              icon: Icon(
                Icons.assignment_outlined,
                color: Color.fromRGBO(186, 186, 186, 1),
              ),
            ),
            BottomNavigationBarItem(
              label: "People",
              icon: Icon(Icons.person, color: Color.fromRGBO(186, 186, 186, 1)),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromRGBO(15, 117, 190, 1),
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 3),
    );
  }
}
