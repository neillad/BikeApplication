import 'package:flutter/material.dart';

class yamaha_kolkata extends StatelessWidget {
  const yamaha_kolkata({Key? key}) : super(key: key);

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
                            "Velocity Motors, Elgin",
                            "Chandan Niketan, 52A Shakespear Sarani, Kolkata - 700017",
                            "8336943335"),
                        showroom_built(
                            "Aquad Yamaha, Kamarhati",
                            "27/1, Green View, B.T.Road, Kolkata - 700058",
                            "7278365991"),
                        showroom_built(
                            "Autostar Yamaha, Rajpur",
                            "109, NS Road, Malancha, Mahinagar, Kolkata - 700145",
                            "8420090000"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Paul Automobiles, Thakurpukur",
                            "509/B Diamond Harbour Road, .Behala, Kolkata - 700063",
                            "9038256536"),
                        showroom_built(
                            "Paul Automobiles - Minerva Garden, Joka",
                            "Diamond Harbour Road, Minerva Garden Complex, Joka, Kolkata - 700104",
                            "6292150887"),
                        showroom_built(
                            "Tanushka Auto, Kestopur",
                            "BB 102,VIP Park,Gr. Floor, Narayantala, Prafulla Kanan, Baguiati, Kolkata - 700059",
                            "9804942909"),
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
