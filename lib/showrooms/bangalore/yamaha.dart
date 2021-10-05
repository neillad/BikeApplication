import 'package:flutter/material.dart';

class yamaha_bangalore extends StatelessWidget {
  const yamaha_bangalore({Key? key}) : super(key: key);

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
                            "Bangalore Wheels - Mallathahalli",
                            "Prestige Delta, #74, St Marks Road, Bangalore - 560025150/30, Ring Road, Opp Dr Ambedkar Engg. College, Kengunte, Bangalore - 560056",
                            "9916610016"),
                        showroom_built(
                            "Panache Yamaha - Marathahalli,",
                            "Survey No 27, 2nd Cross, R J Garden, Outer Ring Road, Marathali Road, Bangalore - 560037",
                            "7676457664"),
                        showroom_built(
                            "Laxmi Yamaha - Bannerghatta",
                            "Prestige Delta, #74, St Marks Road, Bangalore - 560025150/30, Ring Road, Opp Dr Ambedkar Engg. College, Kengunte, Bangalore - 560056",
                            "9916610016"),
                        showroom_built(
                            "Bangalore Wheels - Mallathahalli",
                            "Plot No.5, Bannerghatta Road, Near Dominoz Pizza, Bangalore - 560076",
                            "9980843808"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Panache ar",
                            "No.9, Cmh Road, Binnamangala Indiranagar, Bangalore - 560038",
                            "9844011961"),
                        showroom_built(
                            "Perfect Riders - Lalbagh, Lal Bagh",
                            "#127, Lalbagh Road Opp Passport Office, Bangalore - 560027",
                            "9980562600"),
                        showroom_built(
                            "Anurag Yamaha, Kempegowda Nagar",
                            "102, Bull Temple Road, Near Ramakrishna Ashram, K.g Nagar, Bangalore - 560019",
                            "9845151508"),
                        showroom_built(
                            "Pacer Yamaha, Hebbal",
                            "22/1, Bellary Main Road, Near Baptist Hospital, Bangalore - 560024",
                            "9845003737"),
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
