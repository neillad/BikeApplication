import 'package:flutter/material.dart';

class yamaha_chennai extends StatelessWidget {
  const yamaha_chennai({Key? key}) : super(key: key);

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
                            "Shanti Yamaha, Pallikaranai  ",
                            "PPlot # 30, Mylai Balaji Nagar, Velachery Main Road, Pallikaranai, Chennai - 600100",
                            "9566103111"),
                        showroom_built(
                            "Paras Yamaha, Anna Salai",
                            "621 , Model High School Road, Thousand Light, Annasalai, Chennai - 600006",
                            "9841073650"),
                        showroom_built(
                            "JMB Yamaha - Aminjikarai, Aminjikarai",
                            "364/2, Poonamalle High Road , Aminijikarai , Near Skywalk Shopping Mall, Collectorate Colony, Chennai - 600029",
                            "9841433915"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Sri Motors - Kattupakkam",
                            "47, Mount Poonamalle High Rd, Kamatchi Nagar, Mahalakshmi Nagar, Chennai - 600056",
                            "7550011550"),
                        showroom_built(
                            "Samukh Motors - Selaiyur",
                            "#596, Velachery Main Road, (Adjacent to Selaiyur Police Station),, Chennai - 600073",
                            "7299286633"),
                        showroom_built(
                            "Sri Motors - Porur",
                            "Old #72/164, New #105/C, Mount Poonamallee High Road, Opp. Sakthi Nagar Bus Stop, Chennai - 600116",
                            "9962094333"),
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
