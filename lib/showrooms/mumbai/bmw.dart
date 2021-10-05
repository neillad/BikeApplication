import 'package:flutter/material.dart';

class bmw310_mumbai extends StatelessWidget {
  const bmw310_mumbai({Key? key}) : super(key: key);

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
                            "Navnit Motors, Andheri (W)",
                            "Lotus Trade Centre, Unit No. 101, Ground Flr, Andheri (W), Mumbai - 400053",
                            "022 26748900"),
                        showroom_built(
                            "Navnit Motors",
                            "C/o Sasangi EngineeringRamchandra Lane JunctionNew Malad Link Road, Malad (W), Mumbai, Maharashtra, 400064",
                            "---------"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Navnit Motors",
                            "548 A, C-Wing, Waterford BuildingC. D. Burfiuwala Road, Juhu Galli, Andheri (W) Mumbai, Maharashtra, 400058",
                            "---------"),
                        showroom_built(
                          "Navnit Motors",
                          "43, Atria Mall,Dr Annie Besant Road,Worli, , Mumbai, Maharashtra, 400018",
                          "---------",
                        ),
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
