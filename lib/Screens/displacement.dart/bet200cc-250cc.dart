import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/250adventure.dart';
import 'package:otpapplication/Screens/bikes/duke250.dart';
import 'package:otpapplication/Screens/bikes/kawasakikx250.dart';
import 'package:otpapplication/Screens/bikes/ninja300.dart';
import 'package:otpapplication/Screens/bikes/suzukirmz250.dart';

class bet200_250cc extends StatefulWidget {
  const bet200_250cc({Key? key}) : super(key: key);

  @override
  _bet200_250ccState createState() => _bet200_250ccState();
}

class _bet200_250ccState extends State<bet200_250cc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "200 to 250cc Bikes",
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
                            'Kawasaki KX250',
                            '8 lakhs Onwards',
                            'assets/images/dirt/kawasakikx250.png',
                            kawasakikx250()),
                        bikes_built('Kawasaki Ninja 300', '3.90 Lakhs Onwards',
                            'assets/images/sports/ninja300.png', ninja300()),
                        bikes_built(
                            'KTM 250 Adventure',
                            '2,29,107 Rs Onwards',
                            'assets/images/adventure/ktm250.png',
                            adventure250()),
                        bikes_built('KTM 250 Duke', '2.60 Lakhs Onwards',
                            'assets/images/naked/duke250.png', duke250()),
                        bikes_built(
                            'Suzuki RM-Z250',
                            '7.90 Lakhs Onwards',
                            'assets/images/dirt/suzukirmz250.png',
                            suzukirmz250()),
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
