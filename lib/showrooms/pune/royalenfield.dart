import 'package:flutter/material.dart';

class royalenfield_pune extends StatelessWidget {
  const royalenfield_pune({Key? key}) : super(key: key);

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
                            "Platinum Royal Enfield, Fatima Nagar",
                            "Shop No. 2, Fun N Shop Mall, Solapur Road, Pune - 411013",
                            "9619682906"),
                        showroom_built(
                            "Kings Autoriders - Baner, Baner",
                            "S.NO. 288/1, Pavitra Building, Opposite Cafe Coffee Day Outlet, Pune - 411045",
                            "9619676608"),
                        showroom_built(
                            "Kings Autoriders - Wakad, Wakad",
                            "Sanskruthi Life Space, Bhumkar Chowk,Wakad,Opposite Sayaji Hotel, Pune - 411057",
                            "9619682729"),
                        showroom_built(
                            "Dhone Automobiles - Kasarwadi, Kasarwadi",
                            "Shop No 4/5, Rahul Chambers,Kasarwadi,Opposite Forbes Marshall, Pune - 411034",
                            "9619652503"),
                        showroom_built(
                            "Siddh Auto, Kothrud",
                            "1&2, Shiwana Commecial Complex, Plot No. 85, Bhusari Colony, Kothrud, Pune - 411029",
                            "9619712817")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Brahma Motors RE - Wakdewadi, Wakadewadi",
                            "Showroom No. 1, Epicenter old pune mumbai highway Wakdewadi Near Shoppers Stop, Pune, Pune - 411003",
                            "9619639159"),
                        showroom_built(
                          "Chopada Motors, Wagholi",
                          "No 6/0941, Gut No 726, Wagholi,Next To Lexicon School, Pune - 412207",
                          "9619645880",
                        ),
                        showroom_built(
                            "Hridaan Motors, Pimpri Chinchwad",
                            "Plot No A1/A, H Block, Telco Rd,Pimpri Chinchwad Industrial Area,, Pune - 411019",
                            "9619673897"),
                        showroom_built(
                            "Sahyadri Auto, Indapur",
                            "208/2/A & B, Indapur, Tal- Indapur, Pune - Solapur Hwy, Pune - 413106",
                            "9619631169"),
                        showroom_built(
                            "Royal Enfield Company Store Pune, Viman Nagar",
                            "GP-07, Phoenix Market City, Nagar Road, Clover Park, Pune - 411014",
                            "9890261888")
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
