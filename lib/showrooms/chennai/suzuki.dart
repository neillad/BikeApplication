import 'package:flutter/material.dart';

class suzuki_chennai extends StatelessWidget {
  const suzuki_chennai({Key? key}) : super(key: key);

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
                            "Pramaan Suzuki, Adambakkam",
                            "160,A/2 Medavakkam Main Road, Chennai - 600088",
                            "9513805790"),
                        showroom_built(
                            "SMK Suzuki, Porur",
                            "No. 99, Mount Ponamallee Trunk Road, Chennai - 600116",
                            "7406881581"),
                        showroom_built(
                            "Athyuk Suzuki, Anna Nagar East",
                            "F 32, Second Avenue,, Chennai - 600102",
                            "9311646707"),
                        showroom_built(
                            "Roonwal Suzuki - Sowcarpet, Sowcarpet",
                            "No.68, Walltax Road, Chennai - 600079",
                            "------------"),
                        showroom_built(
                            "MPC Suzuki, Selaiyur",
                            "No.1 KVIC Nagar, Velachery Main Rd, Gowrivakkam, Chennai - 600073",
                            "9513805734")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Sri Jaganath Motors, Maduravoyal",
                            "Old No. 1/93, New No. 80, Plot No. 4, P.H.Road, Nerkundram, Chennai - 600107",
                            "9319438203"),
                        showroom_built(
                          "Jain Suzuki - Pallavaram, Pallavaram",
                          "No.79/95, GST Road,(Opp.to Olympia Grande Flats), Chennai - 600043",
                          "8190087772",
                        ),
                        showroom_built(
                            "Maya Suzuki, Adyar",
                            "79, Lattice Bridge Road, Indira Nagar, Chennai - 600020",
                            "9087884008"),
                        showroom_built(
                            "Athvith Suzuki, Sholinganallur",
                            "No.2A, Rajiv Gandhi Salai(OMR), Chennai - 600119",
                            "9841657799"),
                        showroom_built(
                            "OMS Suzuki, Madipakkam",
                            "27, Velachery Main Road, Ram Nagar, Chennai - 600091",
                            "7299986465")
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
