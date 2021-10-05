import 'package:flutter/material.dart';

class adventure250_chennai extends StatelessWidget {
  const adventure250_chennai({Key? key}) : super(key: key);
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
                        showroom_built("Annasalai KTM, Thousand Lights",
                            "617, Annasalai, Chennai - 600006", "9884875287"),
                        showroom_built(
                            "KTM Anna Nagar, Anna Nagar",
                            "New No. P-60, Old No. P-52, 6th Avenue, Adjacent Road to K-4 Police Station, Chennai - 600040",
                            "9094047268"),
                        showroom_built(
                            "KTM Red hills, Red Hills",
                            "No. 486C, GNT Road, Chennai - 600052",
                            "9384063599"),
                        showroom_built(
                            "Porur KTM, Poonamallee",
                            "216, Mount ~ Poonamalle High Road,Katthpakkam, , Chennai - 600056",
                            "7845722881"),
                        showroom_built("Thirumullaivoyal KTM, Thirumullaivoyal",
                            "16, CTH Road, Chennai - 600062", "7845722881")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Tambaram KTM, Selaiyur",
                            "2, KVIC Nagar, Velacherry Road,Gowriwakkam, Chennai - 600073",
                            "9566024488"),
                        showroom_built(
                          "Pallavaram KTM, Pallavaram",
                          "OLD NO 89, NEW NO 22, Door No90,ISSA PALLAVARAM, GST ROAD,, Chennai - 600043",
                          "7540042737",
                        ),
                        showroom_built(
                            "Ashok Pillar KTM, Ashok Nagar",
                            "2, Anjugam Nagar, 1st Street, Facing Jawaharlal Nehru Road, Jaffarkhanpet, Chennai - 600083",
                            "9444777273"),
                        showroom_built(
                            "Adyar KTM, Adyar",
                            "24/3, Sardar Patel Road, Southern Part, Ground Floor, Chennai - 600020",
                            "9841733107"),
                        showroom_built(
                            "Omr KTM, Semmancheri",
                            "169, Kumaran Nagar, Plot #1130, Old Mahabalipuram Road,, Chennai - 600119",
                            "9551687272")
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
