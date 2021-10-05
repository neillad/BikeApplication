import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/bullet350.dart';
import 'package:otpapplication/Screens/bikes/enfield350.dart';
import 'package:otpapplication/Screens/bikes/himalayan.dart';
import 'package:otpapplication/Screens/bikes/interceptor350.dart';
import 'package:otpapplication/Screens/bikes/meteor350.dart';

class royalenfieldbrand extends StatefulWidget {
  const royalenfieldbrand({Key? key}) : super(key: key);

  @override
  _royalenfieldbrandState createState() => _royalenfieldbrandState();
}

class _royalenfieldbrandState extends State<royalenfieldbrand> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Royal Enfield Bikes",
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
                            'Enfield Interceptor 650',
                            '3,40,900 Rs Onwards',
                            'assets/images/adventure/interceptor650.png',
                            interceptor350()),
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
