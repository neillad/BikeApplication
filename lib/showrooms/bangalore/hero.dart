import 'package:flutter/material.dart';

class hero_bangalore extends StatelessWidget {
  const hero_bangalore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        showroom_built(
                            "Sai Bikes - Tumkur Road, Tumkur Road",
                            "P-6E, 1st Stage, Peenya Indl. Area, Near Jalahalli Cross, Pillar No.39E, Bangalore - 560058",
                            "9035024268"),
                        showroom_built(
                            "Bimal Hero - Byatarayanapura, ",
                            "Site No-90, New Airport Road, Bangalore - 560092",
                            "9742202126"),
                        showroom_built(
                            "Bhagath Hero, Banaswadi",
                            "Ward-25, 118, Cross Banasawadi Ring Road, Horamavu Vill, K R Puram, Bangalore - 560043",
                            "9900591679"),
                        showroom_built(
                            "Max Motors, Rajajinagar",
                            "2/6, Dr Rajkumar Road, 3rd Stage, Bangalore - 560010",
                            "9632812027"),
                        showroom_built(
                            "Bimal Motors - Doddaballapur",
                            "No 33/34, Hanumanthagowda Complex, Civil Court Road, Bangalore - 561203",
                            "9742202125")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Prakash Motors, Sudhama Nagar",
                            "No.15, Subbaiah Circle, Lalbahgh Road, Bangalore - 560027",
                            "9845505263"),
                        showroom_built(
                          "Nidhi Motors, Bommanahalli",
                          "#281/8, Near Silk Borad, NH-7, Hosur Road, Bangalore - 560068",
                          "7353300092",
                        ),
                        showroom_built(
                            "Bhagath Hero - Krishnarajapura",
                            "SNP Plaza, Old madras Road, Bangalore - 560036",
                            "7829488706"),
                        showroom_built(
                            "Sai Hero - Mathikere, Mathikere",
                            "16(old no 9), 1st Main Road, Opp .Gokula Bus Stop, Mathikere Main Road,Bangalore - 560054",
                            "9035027951"),
                        showroom_built(
                            "Rishi Motors",
                            "No710 Survey No-28/1 Thubarahalli Varthur Main Road Whitefield, Bangalore",
                            "080 - 42122444")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
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
