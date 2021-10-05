import 'package:flutter/material.dart';

class yamaha_mumbai extends StatelessWidget {
  const yamaha_mumbai({Key? key}) : super(key: key);

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
                            "Kamla Yamaha - Borivali, Borivali (W)",
                            "Avirahi Homes, Bldg. No 3, Shop No. 1,2,3, Ganpati Patil Nagar, New Link Road, Mumbai - 400092",
                            "9619568080"),
                        showroom_built(
                            "My Yamaha - Malad, Malad(W)",
                            "Gala No. 1,2,3,4, Business Classic Bldg., Junction of S. V . Road, Chincholi Bunder, Mumbai - 400001",
                            "8108444434"),
                        showroom_built(
                            "Thomsun Yamaha - Andheri",
                            "106,shitladevi Chs, D.N. Nagar, Andheri West, Mumbai - 401201",
                            "8850348012"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "RSP Wheels, Andheri (W)",
                            "Shop No. 4 & 5, Building: 58 West, SV Road, Opp. Andheri Subway, Mumbai - 400058",
                            "022 26777580"),
                        showroom_built(
                            "Platinum Yamaha, Andheri (E)",
                            "Ground Floor, Shop No.1, Shanti Sadan, 45, Teli Park Road, Mumbai - 400093",
                            "7700088882"),
                        showroom_built(
                            "Ganesh Enterprises, Vikhroli West",
                            "Opp. Hindustan Construction Co.,l.b.s. Marg, Vikhroli (w), Mumbai - 400883",
                            "9820075960"),
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
