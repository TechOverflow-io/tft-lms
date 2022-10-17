import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';
import '../widgets/to_do.dart';

class StudentTodo extends StatefulWidget {
  const StudentTodo({Key? key}) : super(key: key);

  @override
  State<StudentTodo> createState() => _StudentTodoState();
}

class _StudentTodoState extends State<StudentTodo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      key: _scaffoldKey,
      appBar: AppBar(
        title: AppbarTital(text1: "| To Do"),
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
        padding: const EdgeInsets.all(12),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 1,
            shadowColor: Colors.grey,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 12),
                    child: Text("7 Tasks To Do",
                        style: GoogleFonts.andika(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(26, 26, 26, 1.0))),
                  )
                ]),
                Expanded(
                  child: ListView(
                    children: ListTile.divideTiles(context: context, tiles: [
                      TodoTask(
                        imageurl: "assets/images/todo1.png",
                        textl: "Task 5 - Group Work",
                        text2: "Programming Language",
                        icon: Icons.person_outline,
                        text3: "Due Tomorrow | Aug 6",
                        color: const Color.fromRGBO(229, 79, 69, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo2.png",
                        textl: "Assignment No. 3",
                        text2: "Operating System",
                        icon: Icons.description_outlined,
                        text3: "Due Saturday | Aug 7",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo3.png",
                        textl: "Task 6 - Group Work",
                        text2: "Programming Language",
                        icon: Icons.person_outline,
                        text3: "Due Tomorrow | Aug 6",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo4.png",
                        textl: "Task 1 - Create a Flowchart",
                        text2: "Human Computer Interaction",
                        icon: Icons.person_outline,
                        text3: "Due Monday | Aug 9",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo5.png",
                        textl: "Assignment No. 5",
                        text2: "Logic Design",
                        icon: Icons.person_outline,
                        text3: "Due Friday | Aug 13",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo6.png",
                        textl: "Assignment No. 6",
                        text2: "Logic Design",
                        icon: Icons.person_outline,
                        text3: "Due Friday | Aug 13",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo6.png",
                        textl: "Assignment No. 6",
                        text2: "Logic Design",
                        icon: Icons.person_outline,
                        text3: "Due Friday | Aug 13",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo6.png",
                        textl: "Assignment No. 6",
                        text2: "Logic Design",
                        icon: Icons.person_outline,
                        text3: "Due Friday | Aug 13",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo6.png",
                        textl: "Assignment No. 6",
                        text2: "Logic Design",
                        icon: Icons.person_outline,
                        text3: "Due Friday | Aug 13",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                      TodoTask(
                        imageurl: "assets/images/todo6.png",
                        textl: "Assignment No. 6",
                        text2: "Logic Design",
                        icon: Icons.person_outline,
                        text3: "Due Friday | Aug 13",
                        color: const Color.fromRGBO(35, 129, 216, 1),
                      ),
                    ]).toList(),
                  ),
                ),
              ],
            )),
      ),
      drawer: const StudentDrawer(),
    );
  }
}
