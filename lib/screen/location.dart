import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF1A232E),
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Text('What’s your location?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20.21,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  )),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                'We need your location to show available\nproducts from farmers near you.',
                style: TextStyle(
                  color: Color(0xFF626363),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/locatn 1 (2).png',
            width: 350,
            height: 350,
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Container()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF2F9623),
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
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Enter Location Manually',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF2F9623),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          )
        ],
      ),
    ));
  }
}
