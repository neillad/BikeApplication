import 'package:flutter/material.dart';

class suzuki_pune extends StatelessWidget {
  const suzuki_pune({Key? key}) : super(key: key);

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
                            "Automatic Suzuki - Karve Nagar, Karvenagar",
                            "Shop No. 42 & 43, Kakde Plaza, Opp. Kakde City, Pune - 411052",
                            "8530013697"),
                        showroom_built(
                            "Dhone Suzuki, Parvati Paytha",
                            "S.No.47/30-C, Pl.No.3, Aranyeshwar Road, Parvati, Pune - 411009",
                            "7406591126"),
                        showroom_built(
                            "Aryan Suzuki, Baner",
                            "Sr No. 127/2, Mhalunge Road, Lalit Estate, Pune - 411045",
                            "7428897726"),
                        showroom_built(
                            "Shiv Suzuki - Chinchwad, Pimpri Chinchwad",
                            "P-66/73, Telco Rd, D-II Block, MIDC, Pune - 411019",
                            "9319438250"),
                        showroom_built(
                            "Ace Kudale Suzuki, Wagholi",
                            "Survey No.280, New Gate No.1347/4, Near Maple Hotel, Pune - 412207",
                            "9552512336")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Bunty Suzuki, Wakadewadi",
                            "Saffaire Park Galleria, Shop No.4, Opp. Home Furniture, Bombay-Pune Road, Pune - 411005",
                            "9850559993"),
                        showroom_built(
                          "Autonity Suzuki, Wakad",
                          "Survey No 270, 2/B, Aundh Hinjewadi Road, Shedge Wasti, Pune - 411057",
                          "7420056104",
                        ),
                        showroom_built(
                            "Ace Kudale - Vishrantwadi, Vishrantwadi",
                            "Airport Road, Near Road No. 5 & 6, Tingre Nagar, Pune - 411015",
                            "8411833381"),
                        showroom_built(
                            "Ace Kudale Suzuki - Sangamwadi, Sangamvadi",
                            "Shop no 11, Gold field plaza, Bund garden Road, Pune - 411001",
                            "8411833381"),
                        showroom_built(
                            "KGN Suzuki, Kondhwa",
                            "Hindustan Velancia, SR No-11/9+14/2B216, Kausar Baug, Pune - 411048",
                            "9822820009")
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
