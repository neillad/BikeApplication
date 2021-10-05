import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/benelli502.dart';
import 'package:otpapplication/Screens/bikes/kawasakikx250.dart';
import 'package:otpapplication/Screens/bikes/kawasakikx450.dart';
import 'package:otpapplication/Screens/bikes/ninja300.dart';
import 'package:otpapplication/Screens/bikes/ninja650.dart';
import 'package:otpapplication/Screens/bikes/suzukirmz250.dart';
import 'package:otpapplication/Screens/bikes/tiger.dart';
import 'package:otpapplication/Screens/bikes/triumpbonevillat120.dart';
import 'package:otpapplication/Screens/bikes/triumpscrambler1200.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettripler.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettriplers.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettwin.dart';
import 'package:otpapplication/Screens/bikes/triumptrident.dart';
import 'package:otpapplication/Screens/bikes/trk.dart';
import 'package:otpapplication/Screens/bikes/vstrom.dart';
import 'package:otpapplication/Screens/bikes/vulcan.dart';
import 'package:otpapplication/Screens/bikes/z650.dart';
import 'package:otpapplication/Screens/bikes/z900.dart';

class between4_10 extends StatefulWidget {
  const between4_10({Key? key}) : super(key: key);

  @override
  _between4_10State createState() => _between4_10State();
}

class _between4_10State extends State<between4_10> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Expensive Bikes",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        bikes_built('Benelli TRK 502X', '5,25,900 Rs Onwards',
                            'assets/images/adventure/trk.png', trk()),
                        bikes_built('Benelli 502C', '5.60 Lakhs Onwards',
                            'assets/images/naked/benelli502.png', benelli502()),
                        bikes_built(
                            'Kawasaki KX250',
                            '8 lakhs Onwards',
                            'assets/images/dirt/kawasakikx250.png',
                            kawasakikx250()),
                        bikes_built(
                            'Kawasaki KX450',
                            '8.90 Lakhs Onwards',
                            'assets/images/dirt/kawasakikx450.png',
                            kawasakikx450()),
                        bikes_built('Kawasaki Z650', '7.20 Lakhs Onwards',
                            'assets/images/naked/z650.png', z650()),
                        bikes_built('Kawasaki Z900', '9.43 Lakhs Onwards',
                            'assets/images/nakedbikelogo.png', z900()),
                        bikes_built('Kawasaki Ninja 300', '3.90 Lakhs Onwards',
                            'assets/images/sports/ninja300.png', ninja300()),
                        bikes_built('Kawasaki Ninja 650', '7.43 Lakhs Onwards',
                            'assets/images/sports/ninja650.png', ninja650()),
                        bikes_built('Kawasaki Vulcan S', '6.88 Lakhs Onwards',
                            'assets/images/adventure/vulcan.png', vulcan()),
                        bikes_built(
                            'Suzuki V-Strom 650 XT',
                            '8,89,507 Rs Onwards',
                            'assets/images/adventure/vstrom.png',
                            vstrom()),
                        bikes_built(
                            'Suzuki RM-Z250',
                            '7.90 Lakhs Onwards',
                            'assets/images/dirt/suzukirmz250.png',
                            suzukirmz250()),
                        bikes_built('Triumph Tiger 900', '13,70,000 Rs Onwards',
                            'assets/images/adventure/tiger.png', tiger()),
                        bikes_built(
                            'Triumph Street Twin',
                            '9.25 Lakhs Onwards',
                            'assets/images/luxury/triumpstreettwin.png',
                            triumpstreettwin()),
                        bikes_built(
                            'Triumph Trident 660',
                            '8 Lakhs Onwards',
                            'assets/images/naked/triumptrident.png',
                            triumptrident()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container bikes_built(
      String text1, String text2, String imagepath, final CallbackAction) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 280,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => CallbackAction));
        },
        child: Stack(
          children: [
            Image.asset(
              "assets/images/design3.png",
              height: 150,
            ),
            Positioned(
              left: 20,
              child: Image.asset(
                imagepath,
                height: 170,
              ),
            ),
            Positioned(
              top: 170,
              left: 80,
              child: Text(
                text1,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 200,
              left: 85,
              child: Text(
                text2,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38),
              ),
            ),
            Positioned(
              top: 225,
              left: 105,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.purple])),
                child: Text(
                  "View Offers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
