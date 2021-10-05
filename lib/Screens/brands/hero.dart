import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/heropassionpro.dart';
import 'package:otpapplication/Screens/bikes/herosplenderpro.dart';
import 'package:otpapplication/Screens/bikes/heroxstream160r.dart';
import 'package:otpapplication/Screens/bikes/heroxstream200s.dart';
import 'package:otpapplication/Screens/bikes/xpulse.dart';

class herobrand extends StatefulWidget {
  const herobrand({Key? key}) : super(key: key);

  @override
  _herobrandState createState() => _herobrandState();
}

class _herobrandState extends State<herobrand> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Hero Bikes",
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
                        bikes_built('Hero Xpulse 200', '1,20,800 Rs Onwards',
                            'assets/images/adventure/xpulse.png', xpulse()),
                        bikes_built(
                            'Hero Xtreme 200S',
                            '1,69,567 Rs Onwards',
                            'assets/images/sports/heroxstream200s.png',
                            heroxstream200s()),
                        bikes_built(
                            'Hero Splendor Plus',
                            '75,457 Rs Onwards',
                            'assets/images/adventure/herosplenderx.png',
                            herosplenderpro()),
                        bikes_built(
                            'Hero Passion pro 110',
                            '86,157 Rs Onwards',
                            'assets/images/adventure/heropassionpro110.png',
                            heropassionpro()),
                        bikes_built(
                            'Hero Xtreme 160R',
                            '1,35,157 Rs Onwards',
                            'assets/images/adventure/heroxstream160r.png',
                            heroxstream160r()),
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
