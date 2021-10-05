import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/yamahafzfi.dart';
import 'package:otpapplication/Screens/bikes/yamahafzx.dart';
import 'package:otpapplication/Screens/bikes/yamahamt15.dart';
import 'package:otpapplication/Screens/bikes/yamahar15.dart';

class yamaha_brand extends StatefulWidget {
  const yamaha_brand({Key? key}) : super(key: key);

  @override
  _yamaha_brandState createState() => _yamaha_brandState();
}

class _yamaha_brandState extends State<yamaha_brand> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Triump Bikes",
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
                            'Yamaha FZ X',
                            '1.40 Lakhs Onwards',
                            'assets/images/adventure/yamahafzx.png',
                            yamahafzx()),
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
