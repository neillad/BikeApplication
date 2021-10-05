import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/250adventure.dart';
import 'package:otpapplication/Screens/bikes/390adventure.dart';
import 'package:otpapplication/Screens/bikes/benelli400.dart';
import 'package:otpapplication/Screens/bikes/bmw1250gs.dart';
import 'package:otpapplication/Screens/bikes/bmw310.dart';
import 'package:otpapplication/Screens/bikes/bmw310gs.dart';
import 'package:otpapplication/Screens/bikes/bullet350.dart';
import 'package:otpapplication/Screens/bikes/enfield350.dart';
import 'package:otpapplication/Screens/bikes/heropassionpro.dart';
import 'package:otpapplication/Screens/bikes/herosplenderpro.dart';
import 'package:otpapplication/Screens/bikes/heroxstream160r.dart';
import 'package:otpapplication/Screens/bikes/heroxstream200s.dart';
import 'package:otpapplication/Screens/bikes/himalayan.dart';
import 'package:otpapplication/Screens/bikes/interceptor350.dart';
import 'package:otpapplication/Screens/bikes/meteor350.dart';
import 'package:otpapplication/Screens/bikes/tiger.dart';
import 'package:otpapplication/Screens/bikes/trk.dart';
import 'package:otpapplication/Screens/bikes/vstrom.dart';
import 'package:otpapplication/Screens/bikes/vulcan.dart';
import 'package:otpapplication/Screens/bikes/xpulse.dart';
import 'package:otpapplication/Screens/bikes/yamahafzx.dart';
import 'package:otpapplication/Screens/bikes/yamahar15.dart';

class adventure extends StatefulWidget {
  const adventure({Key? key}) : super(key: key);

  @override
  _adventureState createState() => _adventureState();
}

class _adventureState extends State<adventure> {
  @override
  void initState() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text(
                "Adventure Bikes",
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
                          bikes_built('Hero Xpulse 200', '1,20,800 Rs Onwards',
                              'assets/images/adventure/xpulse.png', xpulse()),
                          bikes_built('BMW G 310 GS', '3,00,000 Onwards',
                              'assets/images/adventure/bmw310.png', bmw310()),
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
                          bikes_built(
                              'Suzuki V-Strom 650 XT',
                              '8,89,507 Rs Onwards',
                              'assets/images/adventure/vstrom.png',
                              vstrom()),
                          bikes_built(
                              'Triumph Tiger 900',
                              '13,70,000 Rs Onwards',
                              'assets/images/adventure/tiger.png',
                              tiger()),
                          bikes_built('Benelli TRK 502X', '5,25,900 Rs Onwards',
                              'assets/images/adventure/trk.png', trk()),
                          bikes_built(
                              'Benelli Imperiale 400',
                              '24 Lakhs Onwards',
                              'assets/images/adventure/benelli400.png',
                              benelli400()),
                          bikes_built(
                              'BMW R 1250 GS Adventure',
                              '2,30,000 Rs Onwards',
                              'assets/images/adventure/bmwgs1250.png',
                              bmw1250()),
                          bikes_built('BMW G 310 R', '3 Lakhs Onwards',
                              'assets/images/adventure/bmw310.png', bmw310()),
                          bikes_built(
                              'BMW G 310 GS',
                              '3.30 Lakhs Onwards',
                              'assets/images/adventure/bmw310gs.png',
                              bmw310gs()),
                          bikes_built('Kawasaki Vulcan S', '6.88 Lakhs Onwards',
                              'assets/images/adventure/vulcan.png', vulcan()),
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
