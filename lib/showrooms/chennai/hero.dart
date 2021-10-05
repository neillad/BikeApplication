import 'package:flutter/material.dart';

class hero_chennai extends StatelessWidget {
  const hero_chennai({Key? key}) : super(key: key);

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
                            "H M Motors, Porur",
                            "No 3 Arcot Road Ganapathy Nagar, Chennai - 600116",
                            "7299053377"),
                        showroom_built(
                            "Adyar Hero, Adyar",
                            "New No 54, Plot No.269, First Avenue, Indira Nagar, Adyar, Chennai - 600020",
                            "9940101817"),
                        showroom_built(
                            "Nagappa Hero - Kilpauk, Sembiam",
                            "27,Near Madhavaram High Road (Opposite to simson 2nd gate), Chennai - 600011",
                            "9840176683"),
                        showroom_built(
                            "Vishnu Hero - Alandur, Alandur",
                            "15/16-A, G.S.T. Road, Chennai - 600016",
                            "9962217278"),
                        showroom_built(
                            "Vishnu Hero - Jafferkhanpet, Jafferkhanpet",
                            "31A, Jawaharlal Nehru Rd, Chennai - 600089",
                            "9940698697")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Mohana Motors, Velachery",
                            "131/137, Velachery Bye-Pass Road, Bhuvaneshwari Nagar, Chennai - 600042",
                            "9445061607"),
                        showroom_built(
                          "Mohana Hero - Wall Tax Road, George Town",
                          "Door No 71/39, Wall Tax Rd, Sowcarpet, Chennai - 600079",
                          "9962609415",
                        ),
                        showroom_built(
                            "Mohana Hero - Royapuram, Royapuram",
                            "No19/9 Ms Kovil street, Chennai - 600013",
                            "9444906164"),
                        showroom_built(
                            "Mohana Motors - Kelambakkam",
                            "No. 1/249, Old Mahabalipuram Road, Chennai - 603103",
                            "9445436504"),
                        showroom_built(
                            "Navas Automobiles, West Mambalam",
                            "New No.19, Old No.6, Arya Gowda Road, Chennai - 600033",
                            "9841098471")
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
