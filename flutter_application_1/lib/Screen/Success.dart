import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Dashboard.dart';
import 'package:flutter_application_1/Screen/Home.dart';
import 'package:flutter_application_1/Screen/Login.dart';
import 'package:flutter_application_1/Screen/Signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 220),
          child: const Icon(
            Icons.check,
            size: 150.0,
            color: Color.fromRGBO(45, 73, 144, 1),
          ),
        ),
        Container(
          width: 339,
          margin: EdgeInsets.only(top: 50),
          height: 58,
          child: Text(
            "Your Sign up was successful",
            style: GoogleFonts.inter(
                fontSize: 16, color: Color.fromARGB(198, 0, 0, 0)),
            textAlign: TextAlign.center,
          ),
        ),
        GestureDetector(
          child: Text(
            "Continue to Dashboard",
            style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.blue,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Dashboard()));
          },
        ),
      ],
    )));
  }
}
