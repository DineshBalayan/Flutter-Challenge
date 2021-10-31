import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        Padding(
            padding: EdgeInsets.only(left: 50, top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Boat Number :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                            fontSize: 15),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '101',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                            fontSize: 15),
                      ))
                ])),
        const SizedBox(height: 5),
        Padding(
            padding: EdgeInsets.only(left: 50, top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Boat Name :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                            fontSize: 15),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Blue Ship 1',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                            fontSize: 15),
                      ))
                ]))
      ],
    );
  }
}
