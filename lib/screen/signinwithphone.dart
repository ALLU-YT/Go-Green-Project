import 'package:demo_app/screen/otp.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninWithPhone extends StatelessWidget {
  const SigninWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xFF1A232E),
        child: Stack(
          children: [
            Positioned(
                top: 65,
                left: 320,
                child: Image.asset('assets/mingcute_close-line.png')),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Log in to continue',
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
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Text(
                  'Phone Number',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Container(
                    width: 365,
                    height: 46,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF22B573)),
                        borderRadius: BorderRadius.circular(43.20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Text(
                            '+91',
                            style: TextStyle(
                                color: Color(0xFF22B573), fontSize: 17),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                color:
                                    Colors.white, // Set the text color to white
                              ),
                              decoration: InputDecoration(
                                hintText: 'Enter phone number',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(127, 255, 255, 255),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 3, 10, 9),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtpScreen()));
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
                      const SizedBox(
                        width: 90,
                      ),
                      Text(
                        'Get OTP as SMS',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
