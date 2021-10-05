import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/bmw1000r.dart';
import 'package:otpapplication/Screens/bikes/bmw1000rr.dart';
import 'package:otpapplication/Screens/bikes/bmw1250gs.dart';
import 'package:otpapplication/Screens/bikes/bmw310.dart';
import 'package:otpapplication/Screens/bikes/bmw310gs.dart';
import 'package:otpapplication/Screens/bikes/bmwscrambler.dart';

class bmwbrand extends StatefulWidget {
  const bmwbrand({Key? key}) : super(key: key);

  @override
  _bmwbrandState createState() => _bmwbrandState();
}

class _bmwbrandState extends State<bmwbrand> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "BMW Bikes",
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
                        bikes_built('BMW R 1250 GS', '2,30,000 Rs Onwards',
                            'assets/images/adventure/bmwgs1250.png', bmw1250()),
                        bikes_built(
                            'BMW R Nine T Scrambler',
                            '18 lakhs Onwards',
                            'assets/images/naked/bmwscrambler.png',
                            bmwscrambler()),
                        bikes_built('BMW S 1000 R', '19 Lakhs Onwards',
                            'assets/images/sports/bmw1000r.png', bmw1000r()),
                        bikes_built('BMW M 1000 RR', '46 lakhs Onwards',
                            'assets/images/sports/bmw1000rr.png', bmw1000rr()),
                        bikes_built('BMW G 310 R', '3 Lakhs Onwards',
                            'assets/images/adventure/bmw310.png', bmw310()),
                        bikes_built('BMW G 310 GS', '3.30 Lakhs Onwards',
                            'assets/images/adventure/bmw310gs.png', bmw310gs()),
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
