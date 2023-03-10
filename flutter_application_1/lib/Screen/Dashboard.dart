import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Checkout.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Common/Layout.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 45,
                    margin: const EdgeInsets.only(
                        bottom: 10, top: 20, left: 10, right: 20),
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
                Spacer(),
                Container(
                    width: 50,
                    height: 45,
                    margin: const EdgeInsets.only(
                        bottom: 10, top: 20, left: 10, right: 10),
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
                    width: MediaQuery.of(context).size.width - 15,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 75,
                      height: 85,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        // Failed assertion: line 2009 pos 12: 'hasSize'
                        // is not true.
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            // ignore: sort_child_properties_last
                            child: Column(children: [
                              Image.asset(
                                "assets/images/Icon_fruits.png",
                                height: 40,
                              ),
                              Text(
                                "Fruits",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color.fromARGB(255, 255, 242, 237)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color:
                                    const Color.fromARGB(255, 255, 242, 237)),
                            child: Column(children: [
                              Image.asset(
                                "assets/images/Icon_bread.png",
                                height: 40,
                              ),
                              Text(
                                "Bread",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color:
                                    const Color.fromARGB(255, 255, 242, 237)),
                            child: Column(children: [
                              Image.asset(
                                "assets/images/Icon_eggs.png",
                                height: 40,
                              ),
                              Text(
                                "Fruits",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color:
                                    const Color.fromARGB(255, 255, 242, 237)),
                            child: Column(children: [
                              Image.asset(
                                "assets/images/Icon_taco.png",
                                height: 40,
                              ),
                              Text(
                                "Taco",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color:
                                    const Color.fromARGB(255, 255, 242, 237)),
                            child: Column(children: [
                              Image.asset(
                                "assets/images/Icon_bacon.png",
                                height: 40,
                              ),
                              Text(
                                "Bacon",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Popular Deals",
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(0.1),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 75,
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            // ignore: sort_child_properties_last
                            child: Column(children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Checkout()),
                                        );
                                      },
                                      child: Container(
                                        width: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(
                                                  255, 255, 230, 173),
                                              Color.fromARGB(255, 255, 178, 0)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                        ),
                                        child: Image.asset(
                                          "assets/images/mango.png",
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            color: const Color.fromARGB(
                                                255, 243, 116, 61)),
                                        child: Text(
                                          "50% OFF",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    // hearth icon in white at the top right
                                    Positioned(
                                      top: 10,
                                      right: 20,
                                      child: const Icon(
                                        Icons.favorite_sharp,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    // alignment: Alignment.topLeft,
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(
                                        left: 5, top: 10, bottom: 5),
                                    child: Text(
                                      "Mango",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 255, 199, 0),
                                        ),
                                        Text(
                                          " 4.3 ",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          " 100 Ratings",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$13.9",
                                          style: GoogleFonts.inter(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 243, 116, 61),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  // add space between rating and price
                                ],
                              ),
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                right: 15, top: 2, bottom: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            // ignore: sort_child_properties_last
                            child: Column(children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    Container(
                                      width: 250,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 173, 206, 255),
                                            Color.fromARGB(255, 52, 62, 125)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/graps.png",
                                        height: 150,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            color: const Color.fromARGB(
                                                255, 243, 116, 61)),
                                        child: Text(
                                          "50% OFF",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    // hearth icon in white at the top right
                                    Positioned(
                                      top: 10,
                                      right: 20,
                                      child: const Icon(
                                        Icons.favorite_sharp,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    // alignment: Alignment.topLeft,
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(
                                        left: 5, top: 10, bottom: 5),
                                    child: Text(
                                      "Grape",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 255, 199, 0),
                                        ),
                                        Text(
                                          " 4.3 ",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          " 100 Ratings",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$13.9",
                                          style: GoogleFonts.inter(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 243, 116, 61),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  // add space between rating and price
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "All Grocery",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: 200,
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Image.asset('assets/images/chocolate.png'),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 228, 225, 225),
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 228, 225, 225)
                                ])))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "Chocolates",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Row(children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 199, 0),
                          ),
                          Text(
                            " 4.3 ",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            " 75 Ratings",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ])),
                    Container(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        "\$75",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 100,
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(children: [
                          Image.asset(
                            'assets/images/dis.png',
                            width: 20,
                          ),
                          Text(
                            " 50% off upto \$40",
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ])),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      height: 200,
                      margin: EdgeInsets.only(left: 15, top: 15),
                      child: Image.asset('assets/images/sandwhich.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(245, 237, 218, 125),
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(245, 237, 218, 125)
                              ])),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "Sandwich",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Row(children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 199, 0),
                          ),
                          Text(
                            " 4.3 ",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            " 75 Ratings",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ])),
                    Container(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        "\$10",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 100,
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(children: [
                          Image.asset(
                            'assets/images/dis.png',
                            width: 20,
                          ),
                          Text(
                            " 5% off upto \$5",
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ])),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: 200,
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Image.asset('assets/images/stawberray.png'),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 255, 215, 201),
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 255, 215, 201)
                                ])),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                          "strawberry",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10, bottom: 10),
                          child: Row(children: [
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 199, 0),
                            ),
                            Text(
                              " 4.3 ",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              " 75 Ratings",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ])),
                      Container(
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        child: Text(
                          "\$50",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 100,
                        height: 10,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(children: [
                            Image.asset(
                              'assets/images/dis.png',
                              width: 20,
                            ),
                            Text(
                              " 50% off upto \$40",
                              style: GoogleFonts.inter(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ])),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
