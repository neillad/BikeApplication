import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/bmwscrambler.dart';
import 'package:otpapplication/Screens/bikes/hayabusa.dart';
import 'package:otpapplication/Screens/bikes/tiger.dart';
import 'package:otpapplication/Screens/bikes/triumpbonevillat120.dart';
import 'package:otpapplication/Screens/bikes/triumpscrambler1200.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettwin.dart';
import 'package:otpapplication/Screens/bikes/vstrom.dart';
import 'package:otpapplication/Screens/bikes/vulcan.dart';

class luxury extends StatefulWidget {
  const luxury({Key? key}) : super(key: key);

  @override
  _luxuryState createState() => _luxuryState();
}

class _luxuryState extends State<luxury> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text(
                "Luxury Bikes",
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
                          bikes_built(
                              'Triumph Bonneville T120',
                              '13 Lakhs Onwards',
                              'assets/images/luxury/triumpbonevillat120.png',
                              bonevillat120()),
                          bikes_built(
                              'Triumph Scrambler 1200',
                              '16 lakhs Onwards',
                              'assets/images/luxury/triumpscrambler1200.png',
                              triumpscrambler1200()),
                          bikes_built(
                              'Triumph Street Twin',
                              '9.25 Lakhs Onwards',
                              'assets/images/luxury/triumpstreettwin.png',
                              triumpstreettwin()),
                          bikes_built(
                              'BMW R Nine T Scrambler',
                              '18 lakhs Onwards',
                              'assets/images/naked/bmwscrambler.png',
                              bmwscrambler()),
                          bikes_built(
                              'Suzuki V-Strom 650 XT',
                              '8,89,507 Rs Onwards',
                              'assets/images/adventure/vstrom.png',
                              vstrom()),
                          bikes_built(
                              'Triumph Tiger 900',
                              '13,70,000 Rs Onwards',
                              'assets/images/adventure/tiger.png',
                              tiger()),
                          bikes_built('Suzuki Hayabusa', '18.50 Lakhs Onwards',
                              'assets/images/sports/hayabusa.png', hayabusa()),
                          bikes_built('Kawasaki Vulcan S', '6.88 Lakhs Onwards',
                              'assets/images/adventure/vulcan.png', vulcan()),
                        ],
                      ),
                    )
                  ],
                ),
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
