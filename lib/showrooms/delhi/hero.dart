import 'package:flutter/material.dart';

class hero_delhi extends StatelessWidget {
  const hero_delhi({Key? key}) : super(key: key);

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
                            "Pashupati Motors - Adchini",
                            "84, Adchini, Sri Aaurbindo Mrgh, New Delhi, Delhi - 110017",
                            "9870268307"),
                        showroom_built(
                            "Himgiri Hero - Jyoti Nagar, Jyoti Nagar",
                            "B 28, Loni Rd, Durgapuri Chowk, Delhi - 110093",
                            "9870258916"),
                        showroom_built(
                            "Himgiri Hero - Laxmi Nagar, Laxmi Nagar",
                            "A1/2, West Guru Angad Nagar, Near Makker Hospital, Delhi - 110092",
                            "9205316125"),
                        showroom_built(
                            "Himgiri Hero - Jagat Puri, Jagat Puri",
                            "Plot No 1, Gali No 1, Bhagat Singh Colony, Near Toll Tax, Karawal Nagar, Delhi - 110094",
                            "9311326115"),
                        showroom_built(
                            "Singla Hero - Dwarka, Dwarka",
                            "F-1/22A, Main Palam Dabri Road, Mahavir Enclave, Delhi - 110045",
                            "7836078383")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Shiv Ganga Hero, Paschim Vihar",
                            "Shiv Ganga Automobiles Rohtak Road, Delhi - 110063",
                            "9990306363"),
                        showroom_built(
                          "Avni Motors , Najafgarh",
                          "U-171 to 180, New Roshanpura, Main Gurgaon Road, Near BDO Office, Delhi - 110043",
                          "9999636318",
                        ),
                        showroom_built(
                            "Singla Hero - Badarpur, Badarpur",
                            "RZA-1, Mehrauli-Badarpur Road, Pul Pehladpur, Near Badarpur, Delhi - 110044",
                            "8750059098"),
                        showroom_built("R K Automobile, Shahdara",
                            "Shahdara, Delhi - 110032", "8750057019"),
                        showroom_built(
                            "Oswal Motors - Hero, Industrial Area",
                            "A-20, G.T Karnal Road, Azadpur Industrial Area, Delhi - 110033",
                            "7503075671")
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
