import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screen/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool check_box = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // enable the back button
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // end menu icon
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_sharp),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
        title: const Text('Checkout', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/delivery.png',
                height: 100,
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Full Name",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  width: 600,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        labelText: 'Enter your name',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Container(
                child: Text(
                  "Email Address",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  width: 600,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        labelText: 'salman@gmail.com',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Container(
                child: Text(
                  "Phone Number",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  width: 600,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        labelText: 'Enter your phone number',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Container(
                child: Text(
                  "Address",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  width: 600,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        labelText: 'Enter your address',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zip Code",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          width: 180,
                          height: 55,
                          margin: const EdgeInsets.only(bottom: 20, top: 20),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                labelText: 'Zip Code',
                                filled: true,
                                fillColor: Colors.white),
                          )),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          width: 180,
                          height: 55,
                          margin: const EdgeInsets.only(bottom: 20, top: 20),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                labelText: 'City',
                                filled: true,
                                fillColor: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
              // Country Drop down
              Container(
                child: Text(
                  "Country",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  width: 600,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        labelText: 'Choose your country',
                        filled: true,
                        fillColor: Colors.white),
                  )),
              Row(
                children: [
                  Checkbox(
                      value: this.check_box,
                      fillColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 243, 116, 61)),
                      onChanged: (val) {
                        setState(() {
                          check_box = val!;
                        });
                      }),
                  Text(
                    "Save shipping address",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width - 10,
                height: 55,
                padding: EdgeInsets.all(0),
                // ignore: sort_child_properties_last
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 162, 121),
                      Color.fromARGB(255, 243, 116, 61),
                    ],
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 19),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 250, 250, 250),
                        fontSize: 24),
                  ),
                  onPressed: () {
                    print('Next');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
