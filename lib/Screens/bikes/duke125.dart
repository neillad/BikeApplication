import 'package:flutter/material.dart';
import 'package:otpapplication/showrooms/bangalore/250adventure.dart';
import 'package:otpapplication/showrooms/chennai/250adventure.dart';
import 'package:otpapplication/showrooms/delhi/250adventure.dart';
import 'package:otpapplication/showrooms/kolkata/250adventure.dart';
import 'package:otpapplication/showrooms/mumbai/250adventure.dart';
import 'package:otpapplication/showrooms/pune/250adventure.dart';

class duke125 extends StatelessWidget {
  const duke125({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(3, 2))
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                      left: 1,
                      child: Image.asset(
                        "assets/images/design4.png",
                        height: 100,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 80,
                      child: Text(
                        "KTM 125 Duke",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 30,
                        top: 25,
                        child: Image.asset('assets/images/naked/duke125.png'))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(3, 2))
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "KTM 125 Duke",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹1.90 lakhs - ₹2.30 lakhs",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(3, 2))
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/engine.png",
                              height: 50,
                            ),
                            Image.asset(
                              "assets/images/mileage.png",
                              height: 50,
                            ),
                            Image.asset(
                              "assets/images/topspeed.png",
                              height: 50,
                            ),
                            Image.asset(
                              "assets/images/weight.png",
                              height: 50,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "124.71 cc  ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "40 Kmpl",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "120 kmph",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "159 kg",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(3, 2))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Power & Performance",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        rich_text_build(
                            "Fuel Type               -   ", " Petrol"),
                        rich_text_build(
                            "Cooling System    -  ", "  liquid cooled"),
                        rich_text_build(
                            "Tank Capacity       -   ", "13.5 Litres"),
                        rich_text_build(
                            "Max Power            -    ", "14 bhp @ 9,250 rpm"),
                        rich_text_build(
                            "Max Torque           -    ", "12 Nm @ 8,000rpm"),
                        rich_text_build(
                            "Cylinders                -             ", "1"),
                        rich_text_build("Ignition                   -    ",
                            " Digital ignition"),
                        rich_text_build(
                            "Transmission        -     ", "Chain Drive"),
                        rich_text_build(
                            "Transmission        -     ", "6 Speed Manual"),
                        rich_text_build("Clutch                     -     ",
                            "Wet Multi-Disc")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(3, 2))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Brake & Wheels",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    rich_text_build(
                        "Braking System     -", "     Single Channel ABS"),
                    rich_text_build("Front Brake Type   - ", "    Disc"),
                    rich_text_build("Front Brake Size    -", "     300 mm"),
                    rich_text_build("Rear Brake Type    -", "      Disc"),
                    rich_text_build("Rear Brake Size     -", "      230 mm"),
                    rich_text_build("Wheel Type             -", "      Alloy"),
                    rich_text_build("Front Wheel Size   -", "      17 inch"),
                    rich_text_build("Rear Wheel Size    -", "      17 inch"),
                    rich_text_build(
                        "Tyre Type                -", "      Tubeless"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(3, 2))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Features,Dimension & Warranty",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    rich_text_build("Odometer               -", "     Digital"),
                    rich_text_build("DRLs                        - ", "    No"),
                    rich_text_build("Speedometer         -", "     Digital"),
                    rich_text_build("Tachometer            -", "     digital"),
                    rich_text_build("Headlight Type      -", "      Halogen"),
                    rich_text_build(
                        "Brake/Tail Light     -", "      LED tail lamp"),
                    rich_text_build(
                        "Start Type               -", "     Electric Start"),
                    rich_text_build(
                        "Clock                       -", "     Yes"),
                    rich_text_build(
                        "Warranty                 -     ", "2 Years ")
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(3, 2))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "On road Price",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        rich_text_build1(
                            "Mumbai      ", "-  1,97,932", Colors.blue),
                        rich_text_build1(
                            "Bangalore  ", "-  2,14,208", Colors.red),
                        rich_text_build1(
                            "Delhi           ", "-  1,93,849", Colors.green),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 32,
                          ),
                          rich_text_build1(
                              "Pune      ", "- 1,97,519", Colors.orange),
                          rich_text_build1(
                              "Chennai ", "- 1,93,625", Colors.yellow),
                          rich_text_build1(
                              "Kolkata  ", "- 1,97,336", Colors.purple),
                        ]),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(3, 2))
                    ]),
                child: Text(
                  "Find Showrooms",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 200,
                  physics: BouncingScrollPhysics(),
                  children: [
                    showRooms_built(context, "Mumbai",
                        "assets/images/mumbai.png", adventure250_mumbai()),
                    showRooms_built(
                        context,
                        "Bangalore",
                        "assets/images/bangalore.png",
                        adventure250_bangalore()),
                    showRooms_built(context, "Pune", "assets/images/pune.png",
                        adventure250_pune()),
                    showRooms_built(context, "Delhi", "assets/images/delhi.png",
                        adventure250_delhi()),
                    showRooms_built(context, "Chennai",
                        "assets/images/chennai.png", adventure250_chennai()),
                    showRooms_built(context, "Kolkata",
                        "assets/images/kolkata.png", adventure250_kolkata()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Container showRooms_built(
      BuildContext context, String text1, String imagepath, CallbackAction) {
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(3, 2))
          ]),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => CallbackAction));
        },
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Image.asset(
              imagepath,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  RichText rich_text_build(text1, text2) {
    return RichText(
        text: TextSpan(
            text: text1,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold),
            children: [
          TextSpan(
              text: text2,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))
        ]));
  }

  RichText rich_text_build1(text1, text2, Color color) {
    return RichText(
        text: TextSpan(
            text: text1,
            style: TextStyle(
                color: color, fontSize: 18, fontWeight: FontWeight.bold),
            children: [
          TextSpan(
              text: text2,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))
        ]));
  }
}
