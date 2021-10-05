import 'package:flutter/material.dart';

class hero_mumbai extends StatelessWidget {
  const hero_mumbai({Key? key}) : super(key: key);

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
                            "Automiles Hero, Malad (E)",
                            "Shop No.1, Radha Krishna Bldg No.10, Dhanjiwadi, Western Express Highway, Mumbai - 400001",
                            "6366782946"),
                        showroom_built(
                            "FortPoint Hero - Mahim, Mahim",
                            "Mahim Bus Depot Premises, Opp. St Michael Church, L J Road, Mumbai - 400016",
                            "7428096069"),
                        showroom_built(
                            "AutoLink Hero - Borivali, Kandivali West",
                            "Shivneri Mhada Colony, Near Box 8 Pizza, & Mahavir nagar Signal, Opp Poll No. 277 New Link Road, Mahavir Nagar, Mumbai - 400067",
                            "9870260293 "),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Shyam Auto, Ghatkopar (W)",
                            "1st Floor, Vision Housem The Bombay Co.op Industrial Estate Ltd, Narayan Nagar, Mumbai - 400086",
                            "9975003165"),
                        showroom_built(
                          "Trademark Hero, Chembur",
                          "Shop No, 7 to 10, Sion - Trombay Rd, Opposite Vijay Sales, Suman Nagar, Chembur, Mumbai - 400071",
                          "7428096049",
                        ),
                        showroom_built(
                            "Vision Automobiles, Ghatkopar (W)",
                            "14D, Kurla Indl. Estate, N.S.S. Road, Off. LBS Marg, Narayan Nagar, Mumbai - 400086",
                            "9975003197"),
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
