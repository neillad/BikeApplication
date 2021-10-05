import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/brands/benelli.dart';
import 'package:otpapplication/Screens/brands/bmw.dart';
import 'package:otpapplication/Screens/brands/hero.dart';
import 'package:otpapplication/Screens/brands/kawasaki.dart';
import 'package:otpapplication/Screens/brands/ktm.dart';
import 'package:otpapplication/Screens/brands/revolt.dart';
import 'package:otpapplication/Screens/brands/royalenfield.dart';
import 'package:otpapplication/Screens/brands/suzuki.dart';
import 'package:otpapplication/Screens/brands/triump.dart';
import 'package:otpapplication/Screens/brands/yamaha.dart';
import 'package:otpapplication/Screens/test.dart';

class logos extends StatelessWidget {
  const logos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => bmwbrand()));
                      },
                      child: Image.asset(
                        "assets/images/bmwlogo.png",
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => test()));
                        },
                        child: Image.asset("assets/images/hondalogo.png")),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => kawasakibrand()));
                      },
                      child: Image.asset(
                        "assets/images/kawasakilogo.png",
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => triumpbrand()));
                        },
                        child: Image.asset("assets/images/triumplogo.png")),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => revoltbrand()));
                      },
                      child: Image.asset(
                        "assets/images/revoltlogo.png",
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => benellibrand()));
                      },
                      child: Image.asset(
                        "assets/images/benellilogo.png",
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => yamaha_brand()));
                      },
                      child: Image.asset("assets/images/yamahalogo.png")),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => royalenfieldbrand()));
                      },
                      child: Image.asset("assets/images/royalenfieldlogo.png")),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => ktmbrand()));
                    },
                    child: Image.asset(
                      "assets/images/ktmlogo.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => test()));
                    },
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => suzukibrand()));
                      },
                      child: Image.asset("assets/images/suzukilogo.png")),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => herobrand()));
                    },
                    child: Image.asset(
                      "assets/images/tvsherologo.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
