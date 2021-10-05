import 'package:flutter/material.dart';

class adventure250_bangalore extends StatelessWidget {
  const adventure250_bangalore({Key? key}) : super(key: key);

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
                        "Mekhri Circle KTM, Mekiri Circle",
                        "Achaiah Chetty Arcade, No.19,1st Cross, Achaiah Chetty Lay out, RMV Extension, Sadashiva Nagar, Mekhri Circle Junction, Bangalore - 560080",
                        "9311646547"),
                    showroom_built(
                        "KTM - Electronic city",
                        "Electronic city KTM: Ganesha Towers, #60/6, Koneppana Agrahara, Opposite to Infosys Building, Electronic city,Hosur road, Bangalore - 560100",
                        "9870265833"),
                    showroom_built(
                        "BTM Layout KTM, BTM Layout",
                        "No. 3, Service Road, 17th Main, Aicoba Nagar, BTM Layout, 1st Stage, Bangalore - 560068",
                        "9206058925"),
                    showroom_built(
                        "HSR Services - Rajajinagar",
                        "S 1830/1831, 4th Cross, 'D' Block Dr. Rajkumar Road, Rajajinagar, Bangalore - 560010",
                        "8879329561")
                  ],
                ),
                Column(
                  children: [
                    showroom_built(
                        "Khivraj KTM - Marathahalli",
                        "Gowsari Arcade, Next to Reliance Supreme Market, Opposite to Jivika hospital, Marathahalli Outer Ring road, Bangalore - 560037",
                        "9870283158"),
                    showroom_built(
                      "Khivraj KTM - Rajaji Nagar",
                      "New number 71, Old number 601, Ground floor, 1st Main road, Dr.Rajkumar road, 2nd Block, Rajajinagar, Bangalore - 560010",
                      "9870279926",
                    ),
                    showroom_built(
                        "FeaturedBannerghatta KTM",
                        "Near to Meenakshi mall, Opposite to Loyola college, Bangalore - 560076",
                        "9311646544"),
                    showroom_built(
                        "Chandra Layout KTM, Vijayanagar",
                        "11, 2nd Main, Income-Tax Layout, Chandra Layout, Bangalore - 560040",
                        "9319460847")
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
