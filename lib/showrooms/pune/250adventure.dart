import 'package:flutter/material.dart';

class adventure250_pune extends StatelessWidget {
  const adventure250_pune({Key? key}) : super(key: key);

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
                    Column(children: [
                      showroom_built(
                          "Baner KTM, Baner",
                          "My World, Survey no: 128/1-2, Balewadi High Street, Baner, Pune - 411045",
                          "8605448877"),
                      showroom_built(
                          "KTM Wakdewadi, Wakadewadi",
                          "12/B, Bajaj Brand View Building, Pune - 411003",
                          "9922879947"),
                      showroom_built(
                          "Bund Garden KTM, Sangamvadi",
                          "Godrej Castlemaine bldg, Bund Garden Road, Near Ruby Hall Clinic, Pune - 411001",
                          "9158894071"),
                      showroom_built(
                          "Sai Service KTM - Kharadi, Kharadi",
                          "Shop No.20&21, Uttam Plaza, C10, Survey.No.43/1 & 2/1to7, Near NIIT Institute, Pune - 411014",
                          "9158894070"),
                    ]),
                    Column(
                      children: [
                        showroom_built(
                            "Lulla Nagar KTM & Husqvarna, Lullanagar",
                            "Opp Manikchand Malabar, Pune - 411040",
                            "7447442326"),
                        showroom_built(
                          "KTM Chakan, Kurali",
                          "G. No-150, Siddheshwar Complex, Opposite Pavana Shakari Bank, Hapse Wasti, Pune - 410501",
                          "8530648999",
                        ),
                        showroom_built(
                            "KTM Karve Road, Erandwane",
                            "KTM 1st Floor Shop, No.101 B, Karve Rd, opp. Sonal Hall , Pune - 411004",
                            "8085803800"),
                        showroom_built(
                            "Akurdi KTM , Akurdi",
                            "ABC Rutuja Elegance, Shop No -15&16 Near Akurdi Railway station, Pune - 411044",
                            "8796653779")
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
