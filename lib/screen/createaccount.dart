import 'package:demo_app/screen/location.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //  final Size size=MediaQuery.of(context).size;
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                        'Take the first step towards an \nhealthier lifestyle!',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.21,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ))),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Container(
                    width: 355,
                    height: 46,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF22B573)),
                        borderRadius: BorderRadius.circular(43.20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        controller: _textController,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 254,
                                254)), // Set the desired text color
                        decoration: const InputDecoration(
                          hintText: 'First name',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(127, 255, 255, 255),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Phone Number",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Container(
                      width: 355,
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
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'Enter phone number',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(127, 255, 255, 255),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 20, 7),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Email Address",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Container(
                      width: 355,
                      height: 46,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF22B573)),
                          borderRadius: BorderRadius.circular(43.20),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Text(
                              '@',
                              style: TextStyle(
                                  color: Color(0xFF22B573), fontSize: 15),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'Enter Your Email Address',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(127, 255, 255, 255),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 10, 7),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Positioned(
                top: 660,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 70),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LocationScreen()));
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
                              width: 80,
                            ),
                            Text(
                              'Create an account',
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
                    const SizedBox(height: 10),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
