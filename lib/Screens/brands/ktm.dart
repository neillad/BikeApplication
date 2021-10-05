import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/250adventure.dart';
import 'package:otpapplication/Screens/bikes/390adventure.dart';
import 'package:otpapplication/Screens/bikes/duke%20200.dart';
import 'package:otpapplication/Screens/bikes/duke125.dart';
import 'package:otpapplication/Screens/bikes/duke250.dart';
import 'package:otpapplication/Screens/bikes/duke390.dart';
import 'package:otpapplication/Screens/bikes/rc125.dart';
import 'package:otpapplication/Screens/bikes/rc200.dart';

class ktmbrand extends StatefulWidget {
  const ktmbrand({Key? key}) : super(key: key);

  @override
  _ktmbrandState createState() => _ktmbrandState();
}

class _ktmbrandState extends State<ktmbrand> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "KTM Bikes",
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
                            'KTM 390 Adventure',
                            '3,27,369 Rs Onwards',
                            'assets/images/adventure/ktm390.png',
                            adventure390()),
                        bikes_built(
                            'KTM 250 Adventure',
                            '2,29,107 Rs Onwards',
                            'assets/images/adventure/ktm250.png',
                            adventure250()),
                        bikes_built('KTM 125 Duke', '1.90 Lakhs Onwards',
                            'assets/images/naked/duke125.png', duke125()),
                        bikes_built('KTM 200 Duke', '2.20 Lakhs Onwards',
                            'assets/images/naked/duke200.png', duke200()),
                        bikes_built('KTM 250 Duke', '2.60 Lakhs Onwards',
                            'assets/images/naked/duke250.png', duke250()),
                        bikes_built('KTM 390 Duke', '2.60 Lakhs Onwards',
                            'assets/images/naked/duke390.png', duke390()),
                        bikes_built('KTM RC 125', '2 Lakhs Onwards',
                            'assets/images/sports/rc125.png', rc125()),
                        bikes_built('KTM RC 200', '2.30 Lakhs Onwards',
                            'assets/images/sports/rc200.png', rc200()),
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
