import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Signup.dart';
import 'package:flutter_application_1/Screen/Success.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 242, 232),
        body: Center(
            child: Column(
          children: [
            Container(
              width: 339,
              height: 58,
              margin: const EdgeInsets.fromLTRB(0, 90, 0, 19),
              child: Text(
                "Welcome back",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 339,
              height: 58,
              margin: const EdgeInsets.only(top: 17),
              child: Text(
                "Log In to your account",
                style: GoogleFonts.inter(
                    fontSize: 18, color: const Color.fromARGB(198, 0, 0, 0)),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                width: 340,
                height: 55,
                margin: const EdgeInsets.only(bottom: 47),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your name',
                      filled: true,
                      fillColor: Colors.white),
                )),
            // ignore: prefer_const_constructors
            SizedBox(
                width: 340,
                height: 55,
                child: const TextField(
                  obscureText: true,
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
                  Row(
                    children: [
                      Icon(Icons.check_box_outlined),
                      Text(
                        "Remember Me",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(
                    "Forgotten password?",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
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
                    minimumSize: MaterialStateProperty.all(const Size(196, 55)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 45, 73, 144))),
                child: Text(
                  'Login',
                  style: GoogleFonts.inter(
                      color: const Color.fromARGB(255, 250, 250, 250),
                      fontSize: 24),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Success()));
                },
              ),
              margin: const EdgeInsets.only(bottom: 25, top: 30),
            ),
            Text(
              "Or",
              style: GoogleFonts.inter(
                fontSize: 14,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 340,
              height: 55,
              margin: const EdgeInsets.only(bottom: 40, top: 25),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize: MaterialStateProperty.all(const Size(340, 55)),
                    side: MaterialStateProperty.all(const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 246, 246, 246)))),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.android,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Log in with your Google account',
                      style: TextStyle(
                          fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: 220,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    "Dont’t have an account? ",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Signin()));
                    },
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
