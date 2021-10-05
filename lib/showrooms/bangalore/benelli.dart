import 'package:flutter/material.dart';

class benelli_bangalore extends StatelessWidget {
  const benelli_bangalore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Column(
                  children: [
                    showroom_built(
                        "Benelli Bengaluru, Langford Road",
                        "No. 14, Langford avenue , Langford Garden, Bengaluru, Bangalore - 560025",
                        "9591073333"),
                    showroom_built(
                        "Benelli Whitefield, Mahadevapura",
                        "Bridhavan Motors, Kamadhenu Nagar, B Narayanapura, Bangalore - 560016",
                        "9886000319"),
                  ],
                ),
                Column(
                  children: [
                    showroom_built(
                        "Vinayak Cars, Domlur",
                        "No.94, 1st Stage, (Landmark - Cannara Bank), Bangalore - 560071",
                        "9902025002"),
                    showroom_built(
                        "Benelli Whitefield, Mahadevapura",
                        "Bridhavan Motors, Kamadhenu Nagar, B Narayanapura, Bangalore - 560016",
                        "9886000319"),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    ));
  }

  Container showroom_built(String text1, String text2, String text3) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 5, top: 5, bottom: 5),
      margin: EdgeInsets.only(top: 20, left: 10),
      width: 180,
      height: 220,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text1,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text2),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.phone_android_rounded),
              SizedBox(
                width: 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  text3,
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
