import 'package:flutter/material.dart';

class revolt_pune extends StatelessWidget {
  const revolt_pune({Key? key}) : super(key: key);

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
                            "Revolt Electric Bike",
                            "Service Support Building, First Floor, 15/1 Kalyani Nagar, Pune, Maharashtra, 411014",
                            "--------"),
                        showroom_built(
                            "KALYANI NAGAR",
                            "Ground Floor - Service Support Building - Next To Mercedes Benz Trinity Motors, Near Mariplex Mall, Kalyani Nagar, Pune - 411014",
                            "9766689998"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Revolt Motors",
                            " East Avenue Marigold Premises, Kalyani Nagar, Pune, Maharashtra 411014",
                            "097666 89998"),
                        showroom_built(
                            "SENAPATI BAPAT ROAD - SB ROAD",
                            "Ground Floor - ICC Tech Park - Next To Jeep Showroom, Senapati Bapat Road, Pune - 411016",
                            "9766689996"),
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
