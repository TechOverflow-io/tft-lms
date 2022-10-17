import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CourseStudentList extends StatelessWidget {
  const CourseStudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              shadowColor: Colors.grey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/course4.png",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'People in this class',
                        style: GoogleFonts.allertaStencil(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(26, 26, 26, 1.0),
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const StudentList(),
                  ]),
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Color.fromRGBO(130, 130, 130, 1),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.5,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Professors',
            style: GoogleFonts.andika(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1.0),
                fontSize: 12),
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/tft_logo.png'),
          ),
          title: Text(
            'James Gosling',
            style: GoogleFonts.allertaStencil(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1.0),
                fontSize: 12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Students',
                style: GoogleFonts.andika(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1.0),
                    fontSize: 13),
              ),
              const Spacer(),
              const Icon(Icons.people, size: 15),
              const SizedBox(
                width: 10,
              ),
              Text(
                "32",
                style: GoogleFonts.andika(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 12),
              ),
            ],
          ),
        ),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),
        const StudentList1(),

        // SizedBox(
        //   height: 500,
        //   child: Expanded(
        //     child: ListView.builder(
        //       itemCount: 5,
        //       itemBuilder: (BuildContext context, int index) {
        //         return ListTile(
        //           leading: const CircleAvatar(
        //             backgroundColor: Colors.white,
        //             backgroundImage: AssetImage('assets/images/tft_logo.png'),
        //           ),
        //           title: Text(
        //             'James Gosling',
        //             style: GoogleFonts.allertaStencil(
        //                 fontWeight: FontWeight.w400,
        //                 color: const Color.fromRGBO(0, 0, 0, 1.0),
        //                 fontSize: 12),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}

class StudentList1 extends StatelessWidget {
  const StudentList1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/images/tft_logo.png'),
      ),
      title: Text(
        'James Gosling',
        style: GoogleFonts.allertaStencil(
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(0, 0, 0, 1.0),
            fontSize: 12),
      ),
    );
  }
}
