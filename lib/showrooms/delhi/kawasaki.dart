import 'package:flutter/material.dart';

class kawasaki_delhi extends StatelessWidget {
  const kawasaki_delhi({Key? key}) : super(key: key);

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
                        "Kawasaki Delhi, Mehrauli",
                        "D - 56 Ground Floor, 100 Feet Road, Chattarpur Enclave, Mehrauli Road, Delhi - 110030",
                        "7065334334"),
                  ],
                ),
                Column(
                  children: [
                    showroom_built(
                        "Kawasaki-West Delhi, Naraina Ph 2",
                        "B-80, Naraina Industrial Area, Phase II, Delhi - 110028",
                        "8448989645"),
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
