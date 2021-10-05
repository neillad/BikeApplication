import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/bullet350.dart';
import 'package:otpapplication/Screens/bikes/duke125.dart';
import 'package:otpapplication/Screens/bikes/gixxer.dart';
import 'package:otpapplication/Screens/bikes/gixxersf.dart';
import 'package:otpapplication/Screens/bikes/heroxstream160r.dart';
import 'package:otpapplication/Screens/bikes/heroxstream200s.dart';
import 'package:otpapplication/Screens/bikes/rc125.dart';
import 'package:otpapplication/Screens/bikes/revolt300.dart';
import 'package:otpapplication/Screens/bikes/revolt400.dart';
import 'package:otpapplication/Screens/bikes/xpulse.dart';
import 'package:otpapplication/Screens/bikes/yamahafzfi.dart';
import 'package:otpapplication/Screens/bikes/yamahafzx.dart';
import 'package:otpapplication/Screens/bikes/yamahamt15.dart';

class betweem1_2 extends StatefulWidget {
  const betweem1_2({Key? key}) : super(key: key);

  @override
  _betweem1_2State createState() => _betweem1_2State();
}

class _betweem1_2State extends State<betweem1_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Budget Bikes",
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
                        bikes_built('KTM 125 Duke', '1.90 Lakhs Onwards',
                            'assets/images/naked/duke125.png', duke125()),
                        bikes_built('KTM RC 125', '2 Lakhs Onwards',
                            'assets/images/sports/rc125.png', rc125()),
                        bikes_built(
                            'Revolt RV 300',
                            '1.04 Lakhs Onwards',
                            'assets/images/electric/revolt300.png',
                            revolt300()),
                        bikes_built('Suzuki Gixxer', '1.30 Lakhs Onwards',
                            'assets/images/naked/gixxer.png', gixxer()),
                        bikes_built('Suzuki Gixxer SF', '1.40 Lakhs Onwards',
                            'assets/images/sports/gixxersf.png', gixxersf()),
                        bikes_built(
                            'Royal Enfield Bullet 350',
                            '1,60,900 Rs Onwards',
                            'assets/images/adventure/bullet350.png',
                            bullet350()),
                        bikes_built(
                            'Hero Xtreme 200S',
                            '1,69,567 Rs Onwards',
                            'assets/images/sports/heroxstream200s.png',
                            heroxstream200s()),
                        bikes_built(
                            'Hero Xtreme 160R',
                            '1,35,157 Rs Onwards',
                            'assets/images/adventure/heroxstream160r.png',
                            heroxstream160r()),
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
                        bikes_built(
                            'Yamaha MT 15',
                            '1.89 Lakhs Onwards',
                            'assets/images/adventure/yamahamt15.png',
                            yamahamt15()),
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
