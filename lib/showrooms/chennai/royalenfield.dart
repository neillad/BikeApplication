import 'package:flutter/material.dart';

class royalenfield_chennai extends StatelessWidget {
  const royalenfield_chennai({Key? key}) : super(key: key);

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
                            "Sri Velavan Motors - Anna Salai, Anna Salai",
                            "152-A, Greams Road, Thousand Lights, Chennai - 600006",
                            "8879494527"),
                        showroom_built(
                            "Sreehitha Royal Enfield, Ashok Nagar",
                            "298/1 Jawarharlal Nehru Salai, 100 Feet Road, JafferkhanPet Chennai, Chennai - 600083",
                            "8879492194"),
                        showroom_built(
                            "Aravinduja Motors, Kumananchavadi",
                            "105, Kamala Gardens, Mount Poonamallee Road, , Chennai - 600056",
                            "8879474233"),
                        showroom_built(
                            "I Speed Motors, Ayanavaram",
                            "Shop No 29/13 Medavkkam, Tank Road, , Chennai - 600023",
                            "8879487675"),
                        showroom_built(
                            "The Legend Motors, Tambaram Sanitorium",
                            "Shop No 14, Tamabaram Sanitorium, GST Rd, Sundarambal Nagar,, Chennai - 600047",
                            "8879509496")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Royal Enfield Brand Stores, Adyar",
                            "New No.9, Old No. 3, Devi Kripa Building Ground Floor and 1st Floor, Besant Avenue Road, Chennai - 600020",
                            "8879477308"),
                        showroom_built(
                          "Sri Velavan Motors - Alwar Tirunagar",
                          "No 5, Arcot Rd, Alwarthirunagar, Chennai - 600001",
                          "8879500580",
                        ),
                        showroom_built(
                            "Sri Velavan Motors Pvt. Ltd. - Nandanam, Nandanam",
                            "No 414, HPCL Retail Outlet, Nandanam,Anna Salai,, Chennai - 600035",
                            "8879497337"),
                        showroom_built(
                            "Sri Venkateswara Bike Zone , Medavakkam",
                            "NO 5/566, Velachery Main Road,(Opp to Ulavar Sandai), Medavakkam, Kanchipuram, Chennai - 600100",
                            "8879505945"),
                        showroom_built(
                            "Royal Enfield OMR, Perungudi",
                            "Plot No : 9 & 10,Omr And Santhosh Nagar Main Road,Palavakkam,, Chennai - 600096",
                            "8879488293")
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
