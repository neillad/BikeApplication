import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/bmw1000r.dart';
import 'package:otpapplication/Screens/bikes/bmw1000rr.dart';
import 'package:otpapplication/Screens/bikes/bmwscrambler.dart';
import 'package:otpapplication/Screens/bikes/hayabusa.dart';
import 'package:otpapplication/Screens/bikes/ninja1000.dart';
import 'package:otpapplication/Screens/bikes/triumpbonevillat120.dart';
import 'package:otpapplication/Screens/bikes/triumpscrambler1200.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettripler.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettriplers.dart';
import 'package:otpapplication/Screens/bikes/z1000.dart';

class above10 extends StatefulWidget {
  const above10({Key? key}) : super(key: key);

  @override
  _above10State createState() => _above10State();
}

class _above10State extends State<above10> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Ultimate Bikes",
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
                            'BMW R Nine T Scrambler',
                            '18 lakhs Onwards',
                            'assets/images/naked/bmwscrambler.png',
                            bmwscrambler()),
                        bikes_built('BMW S 1000 R', '19 Lakhs Onwards',
                            'assets/images/sports/bmw1000r.png', bmw1000r()),
                        bikes_built('BMW M 1000 RR', '46 lakhs Onwards',
                            'assets/images/sports/bmw1000rr.png', bmw1000rr()),
                        bikes_built('Kawasaki Z1000', '15 Lakhs Onwards',
                            'assets/images/naked/z1000.png', z1000()),
                        bikes_built('Kawasaki Ninja 1000', '12 Lakhs Onwards',
                            'assets/images/sports/ninja1000.png', ninja1000()),
                        bikes_built('Suzuki Hayabusa', '18.50 Lakhs Onwards',
                            'assets/images/sports/hayabusa.png', hayabusa()),
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
                            'Triumph Street Triple R',
                            '10.80 Lakhs Onwards',
                            'assets/images/naked/triumpstreettripler.png',
                            triumpstreettripler()),
                        bikes_built(
                            'Triumph Street Triple RS',
                            '13 Lakhs Onwards',
                            'assets/images/naked/triumpstreettriplers.png',
                            triumpstreettriplers()),
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
