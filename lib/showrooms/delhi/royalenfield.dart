import 'package:flutter/material.dart';

class royalenfield_delhi extends StatelessWidget {
  const royalenfield_delhi({Key? key}) : super(key: key);

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
                            "Cruiser Motors - Uttam Nagar, Uttam Nagar",
                            "A-12, Rajapuri, Main Palam-Najafgarh Road, Opp Sec-5 Dwarka, Delhi - 110059",
                            "8291474880"),
                        showroom_built(
                            "Lamba Enterprises, Tilak Nagar",
                            "WZ-1, Nirankari Tower, Ganesh nagar, Main Najafgarh Road, Opposite Metro Pillar No 535, Delhi - 110018",
                            "8291487414"),
                        showroom_built(
                            "Outer Delhi Motorcycles - RE, Najafgarh",
                            "Plot No-U52, Roshanpura Chhawla Road, Najafgarh, Delhi - 110043",
                            "8291494308"),
                        showroom_built(
                            "Amar Autos - Shahdara, Shahadara",
                            "Plot No 341/3B/1/A5, Kanti Nagar Main Rd, Kanti Nagar, Swarn Cinema Road, Delhi - 110051",
                            "8291469519"),
                        showroom_built(
                            "Lamba Enterprises - Kirti Nagar, Kirti Nagar",
                            "D/E 35,Rama Road Industial Area, Najafgarh Road, Kirti Nagar, Delhi - 110015",
                            "8291486223")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Kay Tee Automobiles, Mahipalpur",
                            "A-6, Mahipalpur Extension, Main Vasant Kunj Road, Delhi - 110037",
                            "8291485118"),
                        showroom_built(
                          "South Delhi Motorcycles - Okhla Ind Area Phase - 2, Okhla",
                          "F 26 / 4, Okhla Industrial Area, Phase - 2, Delhi - 110020",
                          "8800744256",
                        ),
                        showroom_built(
                            "Centrum Motorcycles LLP, Naraina",
                            "E-23 Chaudahry Girdhari Lal Marg, Naraina Vihar, Delhi - 110028",
                            "8291474813"),
                        showroom_built(
                            "Ess Aar Motors, Jhandewalan",
                            "No 2E/11, Jhandewalan Extension, Metro Station Gate 2, Delhi - 110055",
                            "8291477021"),
                        showroom_built(
                            "Asco Motors, Patparganj",
                            "Plot No. 80, Industrial Area, Delhi - 110092",
                            "8291469574")
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
