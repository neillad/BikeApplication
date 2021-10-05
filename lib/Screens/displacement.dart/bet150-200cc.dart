import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/duke%20200.dart';
import 'package:otpapplication/Screens/bikes/gixxer.dart';
import 'package:otpapplication/Screens/bikes/gixxersf.dart';
import 'package:otpapplication/Screens/bikes/heroxstream160r.dart';
import 'package:otpapplication/Screens/bikes/heroxstream200s.dart';
import 'package:otpapplication/Screens/bikes/rc200.dart';
import 'package:otpapplication/Screens/bikes/xpulse.dart';
import 'package:otpapplication/Screens/bikes/yamahamt15.dart';
import 'package:otpapplication/Screens/bikes/yamahar15.dart';

class bet150_200cc extends StatefulWidget {
  const bet150_200cc({Key? key}) : super(key: key);

  @override
  _bet150_200ccState createState() => _bet150_200ccState();
}

class _bet150_200ccState extends State<bet150_200cc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "150 to 200cc Bikes",
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
                        bikes_built('KTM 200 Duke', '2.20 Lakhs Onwards',
                            'assets/images/naked/duke200.png', duke200()),
                        bikes_built('KTM RC 200', '2.30 Lakhs Onwards',
                            'assets/images/sports/rc200.png', rc200()),
                        bikes_built('Suzuki Gixxer', '1.30 Lakhs Onwards',
                            'assets/images/naked/gixxer.png', gixxer()),
                        bikes_built('Suzuki Gixxer SF', '1.40 Lakhs Onwards',
                            'assets/images/sports/gixxersf.png', gixxersf()),
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
                            'Yamaha MT 15',
                            '1.89 Lakhs Onwards',
                            'assets/images/adventure/yamahamt15.png',
                            yamahamt15()),
                        bikes_built(
                            'Yamaha YZF R15 V4',
                            '2.10 Lakhs Onwards',
                            'assets/images/adventure/yamahamar15.png',
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
