import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget1 extends StatelessWidget {
  const HomeWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 3.0),
      child: Card(
          //  elevation: 1,
          color: const Color.fromRGBO(218, 101, 93, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/Homebackgound1.png',
              ),
              Padding(
                padding: const EdgeInsets.all(2.0)
                    .add(const EdgeInsets.only(top: 25, left: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/logo1.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TAGUIG CITY UNIVERSITY",
                            style: GoogleFonts.adventPro(
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(255, 255, 255, 1.0),
                                fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              """General Santos Ave, Lower Bicutan
            1632 Taguig, Philippines""",
                              style: GoogleFonts.allertaStencil(
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1.0),
                                  fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5,
                right: 6,
                child: Container(
                  height: 25,
                  width: 57,
                  color: const Color.fromRGBO(0, 0, 0, 0.25),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Visit',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ), // <-- Text
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          // <-- Icon
                          Icons.arrow_forward_ios_rounded,
                          size: 12.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class HomeWidget2 extends StatelessWidget {
  const HomeWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Card(
          // elevation: 1,
          color: const Color.fromRGBO(96, 6, 178, 0.55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/Homebackgound2.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0)
                    .add(const EdgeInsets.only(top: 12, right: 33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/logo2.png',
                    ),
                    Text(
                      """BACHELOR OF SCIENCE IN 
    COMPUTER SCIENCE""",
                      style: GoogleFonts.adventPro(
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(255, 255, 255, 1.0),
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5,
                right: 6,
                child: Container(
                  height: 25,
                  width: 57,
                  color: const Color.fromRGBO(0, 0, 0, 0.25),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Visit',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ), // <-- Text
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          // <-- Icon
                          Icons.arrow_forward_ios_rounded,
                          size: 12.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
