import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          elevation: 0,
          title: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Hello,Nacy Liu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Good morning',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: const [
            Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://blog.readyplayer.me/content/images/2022/10/rainer.jpeg"),
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              children: [
                Container(
                    width: 280,
                    height: 45,
                    margin: const EdgeInsets.only(
                        bottom: 20, top: 20, left: 10, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 205, 210, 222),
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          labelText: 'Seacrh',
                          filled: true,
                          fillColor: Colors.white),
                    )),
                Container(
                    width: 55,
                    height: 45,
                    margin:
                        const EdgeInsets.only(bottom: 20, top: 20, left: 10),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 205, 210, 222),
                                  width: 2.0,
                                ),
                              ),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(const Size(196, 55)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 255, 255, 255))),
                        onPressed: (() => {}),
                        child: const Icon(Icons.menu,
                            color: Color.fromARGB(255, 205, 210, 222)))),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: 375,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/banner.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 10),
                  child: Row(
                    children: [
                      Text(
                        "Show all",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 243, 116, 61),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Icon(
                        Icons.arrow_right_sharp,
                        color: Color.fromARGB(255, 243, 116, 61),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
