import 'package:flutter/material.dart';

class hero_pune extends StatelessWidget {
  const hero_pune({Key? key}) : super(key: key);

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
                        showroom_built("Khandge Automobiles, Talegaon",
                            "Shantai Residency, Pune - 410506", "7406704202"),
                        showroom_built(
                            "Namaha Shivay Hero - Sinhgad Road, Sinhagad Rd",
                            "124/6, Sitabaug Colony, Baba Apartment, Pune - 411030",
                            "7406707539"),
                        showroom_built(
                            "Lakshya Hero, Swargate",
                            "6,Sheha Ganga, T Junction,Shankar Seth Road,Swargate, Pune - 411037",
                            "7972917803"),
                        showroom_built(
                            "Mokha Hero - Wagholi, Wagholi",
                            "Gat No.2335,Khandve Nagar,Near 50 T Way Bridge,Pune-Nagar Road, Pune - 412207=",
                            "9960100531"),
                        showroom_built(
                            "Saideep Hero, Dhankawadi",
                            "Malik Ram Chambers Shop No 1, 2, 3, 4 Ground Floor Sr No 29 Plot No 45/46,Dhankawadi Opp. BSNL Office, Pune - 411043",
                            "7030965304")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Pratibha Motors, Wakad",
                            "Serial No 49/1/30/31, Plot No 323 Chinchwad Wakad Road, Dange Chowk, Pune - 411033",
                            "9011045245"),
                        showroom_built(
                          "Saavya Hero, Kothrud",
                          "S.r. No. 26, Plot No. 176, A.J. Towers, Dahanukar Colony, Near Indian Overseas Bank, Pune - 411058",
                          "7798872222",
                        ),
                        showroom_built(
                            "Saideep Hero - Hadapsar, Hadapsar",
                            "5,6,7, Sr. No. 143, Mega Centre, Pune Solapur Road, Near Ranka Jewellers, Pune - 411028",
                            "9860619181"),
                        showroom_built(
                            "Sehgal Autoriders, Pimpri Chinchwad",
                            "D-II, 64/6, M.I.D.C, Telco Chinchwad Road, Pune - 411019",
                            "9922912957"),
                        showroom_built(
                            "Shubhyan Motors Pvt Ltd",
                            "5678 Mega Center Pune Solapur Rd Hadapsar, Pune - 411028",
                            "020 - 26890033")
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
