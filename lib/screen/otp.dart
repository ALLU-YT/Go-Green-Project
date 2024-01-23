import 'package:demo_app/otpform.dart';
import 'package:demo_app/screen/createaccount.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                  'Verify your number',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20.21,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Enter OTP received on +91  8113892003',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Text(
                  'ENTER THE 6 DIGIT OTP',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              PinCodeText(),
              // OtpTextField(),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Resend in 58 Seconds',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccount()));
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
            ),
            const Positioned(
                top: 790,
                left: 80,
                child: Text(
                  'By verifying OTP, you agree to our Terms & Conditions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  // Form OtpForm(BuildContext context) {
  //   return Form(
  //               child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               const SizedBox(
  //                 width: 15,
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.circular(15),
  //                     border: Border.all(
  //                       color: Colors.white,
  //                     )),
  //                 height: 60,
  //                 width: 48,
  //                 child: TextField(
  //                   onChanged: (value) {
  //                     if (value.length == 1) {
  //                       FocusScope.of(context).nextFocus();
  //                     }else '';
  //                   },
  //                   decoration: const InputDecoration(
  //                     border: InputBorder.none,
  //                   ),
  //                   style: Theme.of(context).textTheme.headline6,
  //                   keyboardType: TextInputType.number,
  //                   textAlign: TextAlign.center,
  //                   inputFormatters: [
  //                     LengthLimitingTextInputFormatter(1),
  //                     FilteringTextInputFormatter.digitsOnly
  //                   ],
  //                 ),
  //               ),

  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.circular(15),
  //                     border: Border.all(
  //                       color: Colors.white,
  //                     )),
  //                 height: 60,
  //                 width: 48,
  //                 child: TextField(
  //                   onChanged: (value) {
  //                     if(value.length== 1){FocusScope.of(context).nextFocus();}else if(value.isEmpty){FocusScope.of(context).previousFocus();}
  //                   },
  //                   decoration: const InputDecoration(
  //                     border: InputBorder.none,
  //                   ),
  //                   style: Theme.of(context).textTheme.headline6,
  //                   keyboardType: TextInputType.number,
  //                   textAlign: TextAlign.center,
  //                   inputFormatters: [
  //                     LengthLimitingTextInputFormatter(1),
  //                     FilteringTextInputFormatter.digitsOnly
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.circular(15),
  //                     border: Border.all(
  //                       color: Colors.white,
  //                     )),
  //                 height: 60,
  //                 width: 48,
  //                 child: TextField(
  //                   onChanged: (value) {
  //                     if (value.length == 1) {
  //                       FocusScope.of(context).nextFocus();
  //                     }else if(value.isEmpty){FocusScope.of(context).previousFocus();}
  //                   },
  //                   decoration: const InputDecoration(
  //                     border: InputBorder.none,
  //                   ),
  //                   style: Theme.of(context).textTheme.headline6,
  //                   keyboardType: TextInputType.number,
  //                   textAlign: TextAlign.center,
  //                   inputFormatters: [
  //                     LengthLimitingTextInputFormatter(1),
  //                     FilteringTextInputFormatter.digitsOnly
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.circular(15),
  //                     border: Border.all(
  //                       color: Colors.white,
  //                     )),
  //                 height: 60,
  //                 width: 48,
  //                 child: TextField(
  //                   onChanged: (value) {
  //                      if(value.isEmpty){FocusScope.of(context).previousFocus();}
  //                   },
  //                   decoration: const InputDecoration(
  //                     border: InputBorder.none,
  //                   ),
  //                   style: Theme.of(context).textTheme.headline6,
  //                   keyboardType: TextInputType.number,
  //                   textAlign: TextAlign.center,
  //                   inputFormatters: [
  //                     LengthLimitingTextInputFormatter(1),
  //                     FilteringTextInputFormatter.digitsOnly
  //                   ],
  //                 ),
  //               ),
  //               const SizedBox(
  //                 width: 15,
  //               ),
  //             ],
  //           ));
  // }
}
