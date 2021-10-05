import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/kawasakiklx110.dart';
import 'package:otpapplication/Screens/bikes/kawasakikx250.dart';
import 'package:otpapplication/Screens/bikes/kawasakikx450.dart';
import 'package:otpapplication/Screens/bikes/ninja1000.dart';
import 'package:otpapplication/Screens/bikes/ninja300.dart';
import 'package:otpapplication/Screens/bikes/ninja650.dart';
import 'package:otpapplication/Screens/bikes/vulcan.dart';
import 'package:otpapplication/Screens/bikes/z1000.dart';
import 'package:otpapplication/Screens/bikes/z650.dart';
import 'package:otpapplication/Screens/bikes/z900.dart';

class kawasakibrand extends StatefulWidget {
  const kawasakibrand({Key? key}) : super(key: key);

  @override
  _kawasakibrandState createState() => _kawasakibrandState();
}

class _kawasakibrandState extends State<kawasakibrand> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Kawasaki Bikes",
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
                            'Kawasaki KLX 110',
                            '3 Lakhs Onwards',
                            'assets/images/dirt/kawasakiklx110.png',
                            kawasakiklx110()),
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
                        bikes_built('Kawasaki Z1000', '15 Lakhs Onwards',
                            'assets/images/naked/z1000.png', z1000()),
                        bikes_built('Kawasaki Ninja 300', '3.90 Lakhs Onwards',
                            'assets/images/sports/ninja300.png', ninja300()),
                        bikes_built('Kawasaki Ninja 650', '7.43 Lakhs Onwards',
                            'assets/images/sports/ninja650.png', ninja650()),
                        bikes_built('Kawasaki Ninja 1000', '12 Lakhs Onwards',
                            'assets/images/sports/ninja1000.png', ninja1000()),
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
