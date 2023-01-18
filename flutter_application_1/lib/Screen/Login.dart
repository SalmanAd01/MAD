import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 213, 242, 232),
        body: Center(
            child: Column(
          children: [
            Container(
              width: 339,
              height: 58,
              margin: EdgeInsets.fromLTRB(0, 90, 0, 19),
              child: Text(
                "Welcome back!",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 339,
              height: 58,
              margin: EdgeInsets.only(top: 67),
              child: Text(
                "Log In to your account",
                style: GoogleFonts.inter(
                    fontSize: 18, color: Color.fromARGB(198, 0, 0, 0)),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                width: 340,
                height: 55,
                margin: EdgeInsets.only(bottom: 47),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your name',
                      filled: true,
                      fillColor: Colors.white),
                )),
            Container(
                width: 340,
                height: 55,
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your password',
                      filled: true,
                      fillColor: Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remember Me",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Forgot Password",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
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
                onPressed: () {},
              ),
              margin: EdgeInsets.only(bottom: 19),
            ),
            OutlinedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(340, 55)),
                  side: MaterialStateProperty.all(const BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 45, 73, 144)))),
              child: const Text(
                'Signup',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 45, 73, 144)),
              ),
              onPressed: () {},
            )
          ],
        )));
  }
}
