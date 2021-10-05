import 'package:flutter/material.dart';

class yamaha_delhi extends StatelessWidget {
  const yamaha_delhi({Key? key}) : super(key: key);

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
                            "Jinder Auto - Rohini, ",
                            "Shop No B-2, B-3, Ground Floor, Rithala Village, Delhi - 110085",
                            "8826827182"),
                        showroom_built(
                            "Jinder Yamaha - Pitampura",
                            "Saraswati Vihar, Pitampura, Delhi - 110034",
                            "9899439051"),
                        showroom_built(
                            "Delhi Scooters - Rajouri Garden",
                            "A-31A, S.no-4, Ring Road, Rajouri Garden, Delhi - 110027",
                            "9716178472"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Delhi Scooters - Uttam Nagar, ",
                            "WZ-168, Block A, Opp. Metro Pillar No. 669, Delhi - 110059",
                            "9899791606"),
                        showroom_built(
                            "Ambuj Automobile, Ganesh Nagar",
                            "64,South Ganesh Nagar, Opposite Mother Dairy, Near Nazeer Restaurant, Delhi - 110092",
                            "9821694525"),
                        showroom_built(
                            "Himgiri Yamaha, Krishan Nagar",
                            "C- 42 Main Road, Opp. Swarn Cinema, East Krishna Nagar, Block E, Delhi - 110051",
                            "8527748656"),
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
