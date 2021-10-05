import 'package:flutter/material.dart';

class yamaha_pune extends StatelessWidget {
  const yamaha_pune({Key? key}) : super(key: key);

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
                            "The Spirit Yamaha - Kothrud, Kothrud",
                            "S.no. 158/1, Shop No.1 And 2, Near Sahyadri International School, Paud Road, Taluka-haveli, Pune - 411308",
                            "9850507712"),
                        showroom_built(
                            "Monarch Yamaha - Karve Nagar",
                            "38/1/B, Plot No 2, Suvarnarekha Society, Ganesh Nagar, Karve Nagar, Pune - 411052",
                            " 9850683648"),
                        showroom_built(
                            "Monarch Yamaha - Dhankawadi",
                            "Plot No.12, Sno.19a/4ab, Dhankawdi, Pune - 411043",
                            "9881884555"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Monarch Yamaha - Tilak Road",
                            "2038, Sadashiv Peth, Tilak Road, Pune - 411030",
                            "9405611438"),
                        showroom_built(
                            "Kings Yamaha, Baner",
                            "Raikar Heights, S No. 126/1, Near Prabhavi Tech Park, Pune - 411045",
                            "9623216169"),
                        showroom_built(
                            "Satav Yamaha - Fatima Nagar",
                            "Shop No.1, Wanawari Road, Opp. Bank Of Maharashtra, Fatimanagar, Pune - 411013",
                            "7249336336"),
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
