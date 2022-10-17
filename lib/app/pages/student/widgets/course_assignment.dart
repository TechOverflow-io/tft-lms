import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentAssignment extends StatelessWidget {
  const StudentAssignment({super.key});

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
                        'Assignments & Activities',
                        style: GoogleFonts.allertaStencil(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(26, 26, 26, 1.0),
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AssignmentList(),
                    const AssignmentList(),
                    const AssignmentList(),
                    const AssignmentList(),
                    const AssignmentList(),
                    const AssignmentList(),
                    const AssignmentList(),
                    const AssignmentList(),
                  ]),
            ),
          ),
        ));
  }
}

class AssignmentList extends StatelessWidget {
  const AssignmentList({super.key});

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
          subtitle: Text(
            'July 13, 2021',
            style: GoogleFonts.allertaStencil(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1.0),
                fontSize: 11),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Java Stack Program",
            style: GoogleFonts.andika(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1.0),
                fontSize: 13),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 50,
              width: 270,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.feed_outlined,
                      size: 33,
                      color: Color.fromRGBO(75, 162, 225, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Java Stack',
                            style: GoogleFonts.allertaStencil(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(15, 117, 190, 1),
                                fontSize: 12),
                          ),
                          Text(
                            'DOCX (48.5 KB)',
                            style: GoogleFonts.andika(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(108, 108, 108, 1),
                                fontSize: 9),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10)
              .add(const EdgeInsets.only(bottom: 5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.insert_comment_outlined, size: 15),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Comments",
                style: GoogleFonts.andika(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 13),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(75, 162, 225, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Unsubmit",
                  style: GoogleFonts.andika(
                      fontWeight: FontWeight.w400, fontSize: 13),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
