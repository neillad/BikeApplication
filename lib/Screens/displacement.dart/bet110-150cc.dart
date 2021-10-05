import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/duke125.dart';
import 'package:otpapplication/Screens/bikes/heropassionpro.dart';
import 'package:otpapplication/Screens/bikes/kawasakiklx110.dart';
import 'package:otpapplication/Screens/bikes/rc125.dart';
import 'package:otpapplication/Screens/bikes/suzukidrz250.dart';
import 'package:otpapplication/Screens/bikes/yamahafzfi.dart';
import 'package:otpapplication/Screens/bikes/yamahafzx.dart';

class bet110_150cc extends StatefulWidget {
  const bet110_150cc({Key? key}) : super(key: key);

  @override
  _bet110_150ccState createState() => _bet110_150ccState();
}

class _bet110_150ccState extends State<bet110_150cc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "110 to 150cc Bikes",
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
                        bikes_built('KTM 125 Duke', '1.90 Lakhs Onwards',
                            'assets/images/naked/duke125.png', duke125()),
                        bikes_built('KTM RC 125', '2 Lakhs Onwards',
                            'assets/images/sports/rc125.png', rc125()),
                        bikes_built(
                            'Suzuki DR-Z50',
                            '2.30 Lakhs Onwards',
                            'assets/images/dirt/suzukidrz250.png',
                            suzukidrz250()),
                        bikes_built(
                            'Hero Passion pro 110',
                            '86,157 Rs Onwards',
                            'assets/images/adventure/heropassionpro110.png',
                            heropassionpro()),
                        bikes_built(
                            'Yamaha FZ FI',
                            '1.20 Lakhs Onwards',
                            'assets/images/adventure/yamahafzfi.png',
                            yamahafzfi()),
                        bikes_built(
                            'Yamaha FZ X',
                            '1.40 Lakhs Onwards',
                            'assets/images/adventure/yamahafzx.png',
                            yamahafzx()),
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
