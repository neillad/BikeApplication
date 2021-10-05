import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/bikes/hayabusa.dart';
import 'package:otpapplication/Screens/bikes/ns200.dart';
import 'package:otpapplication/Screens/bikes/z900.dart';
import 'package:otpapplication/Screens/brands/allbrands.dart';
import 'package:otpapplication/Screens/budget/budget.dart';
import 'package:otpapplication/Screens/catogory/adventure.dart';
import 'package:otpapplication/Screens/catogory/dirt.dart';
import 'package:otpapplication/Screens/catogory/electric.dart';
import 'package:otpapplication/Screens/catogory/luxury.dart';
import 'package:otpapplication/Screens/catogory/naked.dart';
import 'package:otpapplication/Screens/catogory/sports.dart';
import 'package:otpapplication/Screens/displacement.dart/cc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/doodle.png"),
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomCenter)),
        padding: EdgeInsets.only(left: 5, right: 8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Logo.png",
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      image: DecorationImage(
                        image: AssetImage("assets/images/profilepic2.jpeg"),
                      ),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/bluebike.png",
                        height: 250,
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 50,
                      child: Text(
                        "Start Your Day with Some",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 220,
                      child: Text(
                        "Gasoline",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 65,
                      left: 160,
                      child: Image.asset(
                        "assets/images/meter.png",
                        height: 60,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.lightGreen,
                          Colors.blueAccent,
                          Colors.lightBlueAccent
                        ]),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "Featured Bikes",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    featured_bikes("Kawasaki Z900",
                        "assets/images/nakedbikelogo.png", z900()),
                    featured_bikes("Hayabusa 2021",
                        "assets/images/hayabusa.png", hayabusa()),
                    featured_bikes(
                        "Pulsar NS200", "assets/images/ns200.png", ns200()),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      types_of_bikes(
                          "Adventure",
                          "assets/images/sportsbike.png",
                          Colors.grey,
                          adventure()),
                      types_of_bikes(
                          "Electric",
                          "assets/images/electricbike.png",
                          Colors.red,
                          electric()),
                      types_of_bikes("Luxury", "assets/images/Luxarybike.png",
                          Colors.orangeAccent, luxury()),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          types_of_bikes("Dirt", "assets/images/dirtbike.png",
                              Colors.lightBlueAccent, dirt()),
                        ],
                      ),
                      types_of_bikes("Naked", "assets/images/nakedbike.png",
                          Colors.green, naked()),
                      types_of_bikes("Sports", "assets/images/sportsbike.png",
                          Colors.blueAccent, sports()),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.lightGreen,
                          Colors.blueAccent,
                          Colors.lightBlueAccent
                        ]),
                  ),
                  child: Text(
                    "Discover Bikes",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                children: [
                  search_bikes("assets/images/star.png", "Brands",
                      "Search Bikes By Your favourite brands", logos()),
                  search_bikes("assets/images/engine.png", "Displacement",
                      "Search Bikes By Displacement", cc()),
                  search_bikes('assets/images/budget.png', 'Budget',
                      'Search Bikes in your Budget', budget())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container search_bikes(
      String imagepath, String text1, String text2, CallbackAction) {
    return Container(
      height: 86,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => CallbackAction));
          },
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.0,
                  spreadRadius: 1.5,
                  offset: Offset(1, 2)),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Image.asset(
                    imagepath,
                    height: 50,
                  ),
                ),
                Positioned(
                  top: 13,
                  left: 80,
                  child: Text(
                    text1,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 80,
                  child: Text(
                    text2,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column featured_bikes(String text1, String imagepath, final CallbackAction) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => CallbackAction));
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 20, left: 15),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2.0,
                    spreadRadius: 1.5,
                    offset: Offset(1, 2))
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagepath,
                  height: 150,
                  width: 230,
                ),
                Text(
                  text1,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.black26)),
                  child: Text(
                    "View",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container types_of_bikes(
      String text1, String imagePath, Color color, final callbackAction) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.only(top: 10),
      height: 140,
      width: 170,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.transparent),
          boxShadow: [
            new BoxShadow(
                color: Colors.black38,
                blurRadius: 2.0,
                spreadRadius: 1.5,
                offset: Offset(1, 2)),
          ]),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => callbackAction));
        },
        child: Container(
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 150,
                height: 100,
              ),
              Text(
                text1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
