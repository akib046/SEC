import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(home: Men()));

// Stateless widgets do not change over time they remain absolute consatnt
class Men extends StatelessWidget {
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
              child: Container(
                height: 495,
                width: 415,
                child: Ink.image(
                  image: AssetImage('lib/assets/men.png'),
                  // fit: BoxFit.cover,

                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 290),
                      child: Column(
                        children: [
                          Text('MEN',
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF0E0E0E),
    );
  }
}
