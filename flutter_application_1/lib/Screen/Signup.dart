// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Success.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 242, 232),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 339,
                height: 58,
                margin: const EdgeInsets.fromLTRB(0, 90, 0, 19),
                child: Text(
                  "Welcome!",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 339,
                height: 58,
                child: Text(
                  "Sign up for the Chunky app",
                  style: GoogleFonts.inter(
                      fontSize: 18, color: const Color.fromARGB(198, 0, 0, 0)),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  width: 340,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20),
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
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Last name',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Container(
                  width: 340,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email/phone number',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Container(
                  width: 340,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Container(
                  width: 340,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm password',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              SizedBox(
                width: 340,
                height: 55,
                child: Row(
                  children: [
                    const Icon(Icons.check_box_outlined),
                    Text(
                      "By clicking on ‘sign up’, you’re agreeing to the Chunky app\n Terms of Service and Privacy Policy ",
                      style: GoogleFonts.inter(
                        fontSize: 11,
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
                      minimumSize:
                          MaterialStateProperty.all(const Size(196, 55)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 45, 73, 144))),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 250, 250, 250),
                        fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Success()));
                  },
                ),
                margin: const EdgeInsets.only(bottom: 25, top: 15),
              ),
            ],
          ),
        )));
  }
}
