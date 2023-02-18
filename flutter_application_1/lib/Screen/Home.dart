import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Login.dart';
import 'package:flutter_application_1/Screen/Signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/home.png',
            height: 450,
          ),
          Container(
            width: 339,
            height: 58,
            margin: EdgeInsets.only(bottom: 19),
            child: Text(
              "Buy And Sell Anything Faster With The Chunky App",
              style: GoogleFonts.inter(
                fontSize: 24,
                color: Color.fromARGB(255, 45, 73, 144),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 339,
            height: 58,
            child: Text(
              "Massive discounts and offers when you shope.",
              style: GoogleFonts.inter(
                  fontSize: 12, color: const Color.fromARGB(198, 0, 0, 0)),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            // ignore: sort_child_properties_last
            child: ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(340, 55)),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 45, 73, 144))),
              child: Text(
                'Login',
                style: GoogleFonts.inter(
                    color: const Color.fromARGB(255, 250, 250, 250),
                    fontSize: 24),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
            ),
            margin: const EdgeInsets.only(bottom: 19),
          ),
          Container(
            child: OutlinedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(340, 55)),
                  side: MaterialStateProperty.all(const BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 45, 73, 144)))),
              child: const Text(
                'Signup',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 45, 73, 144)),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Signin()));
              },
            ),
            margin: const EdgeInsets.only(bottom: 19),
          )
        ],
      ),
    )));
  }
}
