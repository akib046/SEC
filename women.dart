import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(home: Women()));

// Stateless widgets do not change over time they remain absolute consatnt
class Women extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(''),
          centerTitle: true,
          backgroundColor: Color(0xFF0E0E0E),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_rounded),
              color: Color(0xFFED9818),
              onPressed: () {},
            ),
          ],
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: IconButton(
                icon: Container(
                  child: Image.asset('lib/icons/shopping-cart (2).png'),
                  height: 90,
                ),
                iconSize: 80,
                // color: Color(0xFFED9818),
                onPressed: () {},
              ),
            ),
          ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.transparent,
              height: 5,
              width: double.infinity,
            ),
            preferredSize: Size.fromHeight(70.0),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 20),
              child: SizedBox(
                height: 170,
                width: 170,

                child: Image.asset('lib/assets/screenL.png'),
                //padding: EdgeInsets.fromLTRB(0, 0, 0, 0)
              ),
            ),
            InkWell(
              splashColor: Colors.white24,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 496,
                    width: 900,
                    child: Ink.image(
                      image: AssetImage('lib/assets/women.png'),
                      // fit: BoxFit.cover,

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 340),
                          child: Column(
                            children: [
                              Text('WOMEN',
                                  style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Colors.white,
                                    letterSpacing: 0,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF0E0E0E),
    );
  }
}
