import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/390adventure.dart';
import 'package:otpapplication/Screens/bikes/benelli400.dart';
import 'package:otpapplication/Screens/bikes/benelli502.dart';
import 'package:otpapplication/Screens/bikes/bmw310.dart';
import 'package:otpapplication/Screens/bikes/bmw310gs.dart';
import 'package:otpapplication/Screens/bikes/bullet350.dart';
import 'package:otpapplication/Screens/bikes/duke390.dart';
import 'package:otpapplication/Screens/bikes/enfield350.dart';
import 'package:otpapplication/Screens/bikes/himalayan.dart';
import 'package:otpapplication/Screens/bikes/kawasakikx450.dart';
import 'package:otpapplication/Screens/bikes/meteor350.dart';
import 'package:otpapplication/Screens/bikes/trk.dart';
import 'package:otpapplication/Screens/bikes/z1000.dart';
import 'package:otpapplication/Screens/bikes/z650.dart';
import 'package:otpapplication/Screens/bikes/z900.dart';

class bet250_500cc extends StatefulWidget {
  const bet250_500cc({Key? key}) : super(key: key);

  @override
  _bet250_500ccState createState() => _bet250_500ccState();
}

class _bet250_500ccState extends State<bet250_500cc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "250 to 500cc Bikes",
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
                            'Benelli Imperiale 400',
                            '2,30,000 Rs Onwards',
                            'assets/images/adventure/benelli400.png',
                            benelli400()),
                        bikes_built('BMW G 310 R', '3 Lakhs Onwards',
                            'assets/images/adventure/bmw310.png', bmw310()),
                        bikes_built('BMW G 310 GS', '3.30 Lakhs Onwards',
                            'assets/images/adventure/bmw310gs.png', bmw310gs()),
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
                        bikes_built(
                            'KTM 390 Adventure',
                            '3,27,369 Rs Onwards',
                            'assets/images/adventure/ktm390.png',
                            adventure390()),
                        bikes_built('KTM 390 Duke', '2.60 Lakhs Onwards',
                            'assets/images/naked/duke390.png', duke390()),
                        bikes_built(
                            'Enfield Himalayan',
                            '2,30,784 Rs Onwards',
                            'assets/images/adventure/royalenfield.png',
                            himalayan()),
                        bikes_built(
                            'Enfield Bullet 350',
                            '1,60,900 Rs Onwards',
                            'assets/images/adventure/bullet350.png',
                            bullet350()),
                        bikes_built(
                            'Enfield Classic 350',
                            '2,10,900 Rs Onwards',
                            'assets/images/adventure/royalenfield350.png',
                            enfield350()),
                        bikes_built(
                            'Enfield Meteor 350',
                            '2,40,900 Rs Onwards',
                            'assets/images/adventure/meteor350.png',
                            meteor350()),
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
