import 'package:flutter/material.dart';

class adventure250_delhi extends StatelessWidget {
  const adventure250_delhi({Key? key}) : super(key: key);

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
                            "KTM Moti Nagar, Moti Nagar",
                            "KLJ Complex, Nazafgarh Road, Delhi - 110015",
                            "9910399105"),
                        showroom_built(
                            "Connaught Place KTM, Connaught Place",
                            "NL1, Ground Floor, Plot No: 3 & 4, Outerwing, Delhi - 110001",
                            "9560090701"),
                        showroom_built(
                            "Lajpat Nagar KTM, Lajpat Nagar",
                            "K - 96, Central Market, Delhi - 110024",
                            "8860064814"),
                        showroom_built(
                            "South Delhi KTM, Vasant Vihar",
                            "36, Community Centre, Near PVR Cinema, Vasant Lok, Delhi - 110057",
                            "9910399174"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Dwarka KTM, Dwarka",
                            "K-1/8/A2, Road Number -201,Main Rajapuri Road,, Delhi - 110075",
                            "9999125152"),
                        showroom_built(
                          "Narela KTM , Narela",
                          "42/9 Safiabad Road, Delhi - 110040",
                          "9711998152",
                        ),
                        showroom_built(
                            "KTM Delhi West, Uttam Nagar",
                            "Shop No. 5, Om Vihar Phase 1, Opp. Metro Pillar No. 702, Delhi - 110059",
                            "9577799931"),
                        showroom_built(
                            "Dilshad Garden KTM, Dilshad Garden",
                            "A1 JHILMIL INDUSTRIAL AREA MAIN GT ROAD EAST DELHI, Delhi - 110095",
                            "7289967990"),
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
