import 'package:flutter/material.dart';

class royalenfield_bangalore extends StatelessWidget {
  const royalenfield_bangalore({Key? key}) : super(key: key);

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
                            "CVS Motors, Bellary Road",
                            "No 209/1, Upper Palace Orchards, Bellary Road, Sadashivanagar, Opposite to Palace Grounds Gate No 9, Bangalore - 560080",
                            "8879317604"),
                        showroom_built(
                            "Acclaim Motors RE - Yelahanka, Yelahanka",
                            "G-1, Pyramid North Square, No.520/432, Bellary Road, Nehru Nagar, Bangalore - 560064",
                            "8879310454"),
                        showroom_built(
                            "Teknik Royal Enfield, Indira Nagar",
                            "772 100ft Road, HAL 2nd Stage, , Bangalore - 560038",
                            "8879347996"),
                        showroom_built(
                            "HSR Services - Rajajinagar, Rajajinagar",
                            "S 1830/1831, 4th Cross, 'D' Block Dr. Rajkumar Road, Rajajinagar, Bangalore - 560010",
                            "8879329561"),
                        showroom_built(
                            "CVS Motors - Kalyan Nagar, Kalyan Nagar",
                            "Shop No 812, 1st Block, 5th A Cross Rd, HRBR Layout, Kalyan Nagar,, Bangalore - 560043",
                            "8879320946")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Accelerate Motors, Kengeri Satellite Town",
                            "Shop No 4, 5 & 6, Avirahi Homes, Bldg No 3, Near Svp Polytechnic, Ic Colony, New Link Road, Mumbai - 400103",
                            "7506555038"),
                        showroom_built(
                          "Voyage Motors - Goregaon, Goregaon (E)",
                          "No 48/1, Shamanna Complex, Mysore Road,Kengeri,Near Krishna Priya Convention Hall, Bangalore - 560060",
                          "8879307581",
                        ),
                        showroom_built(
                            "Royal Enfield Brand Store - BTM Layout, EWS Colony",
                            "No. 26, 25th Cross, BTM 2nd Stage, 29th Main Road, Opposite Madiwala Lake, Bangalore - 560076",
                            "8879303294"),
                        showroom_built(
                            "Royal Enfield Company Store Malleswaram, Malleshwaram",
                            "UG - 75, Upper Ground, Mantri Mall, Sampige Road No- 1, Bangalore - 560003",
                            "9738078389"),
                        showroom_built(
                            "Teknik Motors - Hoskote, Hoskote",
                            "336/2,Shiva Garden, Hoskote, Bangalore - 560017",
                            "8879353308")
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
