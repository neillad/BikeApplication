import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/bmw1000r.dart';
import 'package:otpapplication/Screens/bikes/bmw1000rr.dart';
import 'package:otpapplication/Screens/bikes/gixxer250sf.dart';
import 'package:otpapplication/Screens/bikes/gixxersf.dart';
import 'package:otpapplication/Screens/bikes/hayabusa.dart';
import 'package:otpapplication/Screens/bikes/ninja1000.dart';
import 'package:otpapplication/Screens/bikes/ninja300.dart';
import 'package:otpapplication/Screens/bikes/ninja650.dart';
import 'package:otpapplication/Screens/bikes/rc125.dart';
import 'package:otpapplication/Screens/bikes/rc200.dart';
import 'package:otpapplication/Screens/bikes/yamahar15.dart';

class sports extends StatefulWidget {
  const sports({Key? key}) : super(key: key);

  @override
  _sportsState createState() => _sportsState();
}

class _sportsState extends State<sports> {
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
                "Sports Bikes",
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
                          bikes_built('BMW S 1000 R', '19 Lakhs Onwards',
                              'assets/images/sports/bmw1000r.png', bmw1000r()),
                          bikes_built(
                              'BMW M 1000 RR',
                              '46 lakhs Onwards',
                              'assets/images/sports/bmw1000rr.png',
                              bmw1000rr()),
                          bikes_built(
                              'Suzuki Gixxer SF 250',
                              '2.10 Lakhs Onwards',
                              'assets/images/sports/gixxer250sf.png',
                              gixxer250sf()),
                          bikes_built('Suzuki Gixxer SF', '1.40 Lakhs Onwards',
                              'assets/images/sports/gixxersf.png', gixxersf()),
                          bikes_built('Suzuki Hayabusa', '18.50 Lakhs Onwards',
                              'assets/images/sports/hayabusa.png', hayabusa()),
                          bikes_built(
                              'Kawasaki Ninja 300',
                              '3.90 Lakhs Onwards',
                              'assets/images/sports/ninja300.png',
                              ninja300()),
                          bikes_built(
                              'Kawasaki Ninja 650',
                              '7.43 Lakhs Onwards',
                              'assets/images/sports/ninja650.png',
                              ninja650()),
                          bikes_built(
                              'Kawasaki Ninja 1000',
                              '12 Lakhs Onwards',
                              'assets/images/sports/ninja1000.png',
                              ninja1000()),
                          bikes_built('KTM RC 125', '2 Lakhs Onwards',
                              'assets/images/sports/rc125.png', rc125()),
                          bikes_built('KTM RC 200', '2.30 Lakhs Onwards',
                              'assets/images/sports/rc200.png', rc200()),
                          bikes_built(
                              'Yamaha YZF R15 V4',
                              '2.10 Lakhs Onwards',
                              'assets/images/adventure/yamahar15.png',
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
