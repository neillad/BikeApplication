import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/250adventure.dart';
import 'package:otpapplication/Screens/bikes/390adventure.dart';
import 'package:otpapplication/Screens/bikes/benelli400.dart';
import 'package:otpapplication/Screens/bikes/bmw1250gs.dart';
import 'package:otpapplication/Screens/bikes/bmw310.dart';
import 'package:otpapplication/Screens/bikes/bmw310gs.dart';
import 'package:otpapplication/Screens/bikes/duke%20200.dart';
import 'package:otpapplication/Screens/bikes/duke250.dart';
import 'package:otpapplication/Screens/bikes/duke390.dart';
import 'package:otpapplication/Screens/bikes/enfield350.dart';
import 'package:otpapplication/Screens/bikes/himalayan.dart';
import 'package:otpapplication/Screens/bikes/interceptor350.dart';
import 'package:otpapplication/Screens/bikes/kawasakiklx110.dart';
import 'package:otpapplication/Screens/bikes/meteor350.dart';
import 'package:otpapplication/Screens/bikes/rc200.dart';
import 'package:otpapplication/Screens/bikes/suzukidrz250.dart';
import 'package:otpapplication/Screens/bikes/yamahar15.dart';

class between2_4 extends StatefulWidget {
  const between2_4({Key? key}) : super(key: key);

  @override
  _between2_4State createState() => _between2_4State();
}

class _between2_4State extends State<between2_4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Mid Range Bikes",
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
                            'Benelli Imperiale 400',
                            '2,30,000 Rs Onwards',
                            'assets/images/adventure/benelli400.png',
                            benelli400()),
                        bikes_built('BMW R 1250 GS', '2,30,000 Rs Onwards',
                            'assets/images/adventure/bmwgs1250.png', bmw1250()),
                        bikes_built('BMW G 310 R', '3 Lakhs Onwards',
                            'assets/images/adventure/bmw310.png', bmw310()),
                        bikes_built('BMW G 310 GS', '3.30 Lakhs Onwards',
                            'assets/images/adventure/bmw310gs.png', bmw310gs()),
                        bikes_built(
                            'Kawasaki KLX 110',
                            '3 Lakhs Onwards',
                            'assets/images/dirt/kawasakiklx110.png',
                            kawasakiklx110()),
                        bikes_built(
                            'KTM 390 Adventure',
                            '3,27,369 Rs Onwards',
                            'assets/images/adventure/ktm390.png',
                            adventure390()),
                        bikes_built(
                            'KTM 250 Adventure',
                            '2,29,107 Rs Onwards',
                            'assets/images/adventure/ktm250.png',
                            adventure250()),
                        bikes_built('KTM 200 Duke', '2.20 Lakhs Onwards',
                            'assets/images/naked/duke200.png', duke200()),
                        bikes_built('KTM 250 Duke', '2.60 Lakhs Onwards',
                            'assets/images/naked/duke250.png', duke250()),
                        bikes_built('KTM 390 Duke', '2.60 Lakhs Onwards',
                            'assets/images/naked/duke390.png', duke390()),
                        bikes_built('KTM RC 200', '2.30 Lakhs Onwards',
                            'assets/images/sports/rc200.png', rc200()),
                        bikes_built(
                            'Enfield Himalayan',
                            '2,30,784 Rs Onwards',
                            'assets/images/adventure/royalenfield.png',
                            himalayan()),
                        bikes_built(
                            'Suzuki DR-Z50',
                            '2.30 Lakhs Onwards',
                            'assets/images/dirt/suzukidrz250.png',
                            suzukidrz250()),
                        bikes_built(
                            'Enfield Classic 350',
                            '2,10,900 Rs Onwards',
                            'assets/images/adventure/royalenfield350.png',
                            enfield350()),
                        bikes_built(
                            'Enfield Interceptor 650',
                            '3,40,900 Rs Onwards',
                            'assets/images/adventure/interceptor650.png',
                            interceptor350()),
                        bikes_built(
                            'Enfield Meteor 350',
                            '2,40,900 Rs Onwards',
                            'assets/images/adventure/meteor350.png',
                            meteor350()),
                        bikes_built(
                            'Yamaha YZF R15 V4',
                            '2.10 Lakhs Onwards',
                            'assets/images/adventure/yamahar15.png',
                            yamahar15())
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
