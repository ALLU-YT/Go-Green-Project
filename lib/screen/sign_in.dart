import 'package:demo_app/screen/signinwithphone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/OBJECTS (1).png',
              // width: 200,
              // height: 200,
              fit: BoxFit.cover,
            ),
          ), //Second Content
          Positioned(
            top: 355,
            left: 38,
            child: Container(
              width: 131,
              height: 45.85,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(43.20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0xFF0BF36F),
                    blurRadius: 27,
                    offset: Offset(0, 2),
                    spreadRadius: -6,
                  )
                ],
              ),
              child: Image.asset(
                'assets/logo strt1 1 (1).png',
                width: 50,
                height: 50,
              ),
            ),
          ),

          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'An initiative for your   future',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 21.21,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninWithPhone()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(43.20),
                      ),
                      fixedSize: Size(355, 46),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/google 1 (2).png',
                          width: 30,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 47,
                        ),
                        Text(
                          'Sign in with Google',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your Google Sign-in logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF22B573)),
                        borderRadius: BorderRadius.circular(43.20),
                      ),
                      fixedSize:
                          const Size(355, 46), // Set the width and height here
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_iphone_outlined,
                          color: Color(0xFF22B573),
                        ),
                        const SizedBox(
                          width: 41,
                        ),
                        Text(
                          'Sign in with phone number',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF22B573),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Didn’t have an account. ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Create one!',
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF22B573),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  Text(
                    'made with ❤️ by gogreenocean.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.0, // Adjust the line height as needed
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'version 1.0.1(beta)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 0,
              left: 215,
              top: 415,
              child: Image.asset(
                'assets/Healthier (1).png',
                width: 40,
                height: 40,
              )),
          Positioned(
              right: 0,
              left: 160,
              top: 468,
              child: Image.asset(
                'assets/Artboard 7 1.png',
                width: 40,
                height: 40,
              )),
        ],
      ),
    );
  }
}
