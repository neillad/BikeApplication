import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/benelli502.dart';
import 'package:otpapplication/Screens/bikes/bmwscrambler.dart';
import 'package:otpapplication/Screens/bikes/duke%20200.dart';
import 'package:otpapplication/Screens/bikes/duke125.dart';
import 'package:otpapplication/Screens/bikes/duke250.dart';
import 'package:otpapplication/Screens/bikes/duke390.dart';
import 'package:otpapplication/Screens/bikes/gixxer.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettripler.dart';
import 'package:otpapplication/Screens/bikes/triumpstreettriplers.dart';
import 'package:otpapplication/Screens/bikes/triumptrident.dart';
import 'package:otpapplication/Screens/bikes/yamahafzfi.dart';
import 'package:otpapplication/Screens/bikes/yamahafzx.dart';
import 'package:otpapplication/Screens/bikes/yamahamt15.dart';
import 'package:otpapplication/Screens/bikes/z1000.dart';
import 'package:otpapplication/Screens/bikes/z650.dart';
import 'package:otpapplication/Screens/bikes/z900.dart';

class naked extends StatefulWidget {
  const naked({Key? key}) : super(key: key);

  @override
  _nakedState createState() => _nakedState();
}

class _nakedState extends State<naked> {
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
                "Naked Bikes",
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
                              'Benelli 502C',
                              '5.60 Lakhs Onwards',
                              'assets/images/naked/benelli502.png',
                              benelli502()),
                          bikes_built(
                              'BMW R Nine T Scrambler',
                              '18 lakhs Onwards',
                              'assets/images/naked/bmwscrambler.png',
                              bmwscrambler()),
                          bikes_built('KTM 125 Duke', '1.90 Lakhs Onwards',
                              'assets/images/naked/duke125.png', duke125()),
                          bikes_built('KTM 200 Duke', '2.20 Lakhs Onwards',
                              'assets/images/naked/duke200.png', duke200()),
                          bikes_built('KTM 250 Duke', '2.60 Lakhs Onwards',
                              'assets/images/naked/duke250.png', duke250()),
                          bikes_built('KTM 390 Duke', '2.60 Lakhs Onwards',
                              'assets/images/naked/duke390.png', duke390()),
                          bikes_built('Suzuki Gixxer', '1.30 Lakhs Onwards',
                              'assets/images/naked/gixxer.png', gixxer()),
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
                          bikes_built(
                              'Triumph Trident 660',
                              '8 Lakhs Onwards',
                              'assets/images/naked/triumptrident.png',
                              triumptrident()),
                          bikes_built('Kawasaki Z650', '7.20 Lakhs Onwards',
                              'assets/images/naked/z650.png', z650()),
                          bikes_built('Kawasaki Z900', '9.43 Lakhs Onwards',
                              'assets/images/nakedbikelogo.png', z900()),
                          bikes_built('Kawasaki Z1000', '15 Lakhs Onwards',
                              'assets/images/naked/z1000.png', z1000()),
                          bikes_built(
                              'Yamaha FZ FI',
                              '1.20 Lakhs Onwards',
                              'assets/images/adventure/yamahafzfi.png',
                              yamahafzfi()),
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
