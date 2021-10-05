import 'package:flutter/material.dart';

class adventure250_mumbai extends StatelessWidget {
  const adventure250_mumbai({Key? key}) : super(key: key);

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
                            "Kanchan KTM - Kanjurmarg, Kanjurmarg",
                            "A Wing, Gundecha Heights, Shop No 1,2&3, LBS Rd, opp. St. Xavier School, Ambedkar Nagar, Mumbai - 400078",
                            "8587821297"),
                        showroom_built(
                            "Goregaon KTM, Goregaon (W)",
                            "Shope no. 10A - 10B, Shivam CHS Ltd. Opp. Kancha Bar & Restaurant, Shashtri nagar,, Mumbai - 400104",
                            "9513303915"),
                        showroom_built(
                            "Nariman Point KTM & Husqvarna, Barrister Rajni Patel Marg",
                            "Bajaj Bhavan, NO. 226, Ground Floor, Nariman Point, Mumbai - 400021",
                            "8956198651"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Chembur KTM & Husqvarna, Chembur",
                            "CTS No. 652, Off Borla Village, Opp Shatabdi Hospital, W.T.Patil Marg, Mumbai - 400071",
                            "8587800324"),
                        showroom_built(
                          "Andheri East KTM & Husqvarna, Saki Naka",
                          "Shop No 2 & 3, Near Asha Krishna Building, Andheri Ghatkopar Link Road, Andheri East, Mumbai - 400072",
                          "7304029244",
                        ),
                        showroom_built(
                            "Borivali East KTM, Borivali(E)",
                            "Borkar Compound, Western Express Highway, Opp Metro Mall, Mumbai - 400066",
                            "9930606257"),
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
