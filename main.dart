import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(home: Home()));

// Stateless widgets do not change over time they remain absolute consatnt
class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ELYSIUM'),
      //   centerTitle: true,
      //   backgroundColor: Color(0xFFED9818),
      // ),
      // ignore: prefer_const_constructors

      body: Center(
        child: Column(
          // height: 760,

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 170,
                width: 170,

                child: Image.asset('lib/assets/logo2.png'),
                //padding: EdgeInsets.fromLTRB(0, 0, 0, 0)
              ),
            ),
            SizedBox(
              height: 160,
              width: 160,
              child: Image.asset('lib/assets/cart2.png'),
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 0)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Container(
                child: Text(
                  'Welcome to',
                  style: GoogleFonts.bitter(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                child: Text(
                  'elysium',
                  style: GoogleFonts.balooBhai2(
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkResponse(
                onTap: () {},
                child: RaisedButton(
                  onPressed: () {
                    print('success');
                  },
                  color: Color(0xFF0E0E0E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 30),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      backgroundColor: Color(0xFFED9818),
    );

    // backgroundColor: Color(0xFF0E0E0E),
  }
}

Widget buildNavigationButtom() => FloatingActionButton(
    child: Text('Click'),
    backgroundColor: Color(0xFFED9818),
    onPressed: () {
      print('H');
    });
