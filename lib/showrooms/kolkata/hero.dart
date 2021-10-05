import 'package:flutter/material.dart';

class hero_kolkata extends StatelessWidget {
  const hero_kolkata({Key? key}) : super(key: key);

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
                            "Balaji Motors, Thakurpukur",
                            "41 B, Diamond Harbour Road, Kolkata - 700063",
                            "7428094785"),
                        showroom_built(
                            "Hitech Hero - Tollygunge, Tollygunge",
                            "267, Prince Anwar Shah Road, Rajendra Prasad Colony, Kolkata - 700033",
                            "------------"),
                        showroom_built(
                            "Balaji Motors - Budge Budge, Budge Budge",
                            "534, Mahatma Gandhi Road, Joychandipur, Kolkata - 700137",
                            "7428094776"),
                        showroom_built(
                            "Balaji Motors - Joth Shibrampur",
                            "Joth Shibrampur Road, Mahestala, Kolkata - 700141",
                            "7428094771"),
                        showroom_built(
                            "Balaji Motors - Ward Number 15",
                            "243/2B/1, APC Road, Kolkata - 700006",
                            "9311042824")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Balaji Motors - Akra, Akra",
                            "Jagannathgarh, Maheshtla, Akra Station Rd, Kolkata - 700140",
                            "7428519307"),
                        showroom_built(
                          "Hitech Hero - Shantipally, East Kolkata Twp",
                          "289, Shantipally, Kasba, Kolkata - 700107",
                          "7003761107",
                        ),
                        showroom_built(
                            "Raja Motors, Sodepur",
                            "16F, B T Road, Sukchar Girja, Sodepur, 24 Paraganas N, Kolkata - 700115",
                            "8420006663"),
                        showroom_built(
                            "Vinline Hero, Baguiati",
                            "V I P Road, Narayantala West, Kolkata - 700059",
                            "9330416208"),
                        showroom_built(
                            "Hitech Hero - CPT Colony, CPT Colony",
                            "P10, Opp State Bus Garage, Taratala Rd, Kolkata - 700088",
                            "8334042423")
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
