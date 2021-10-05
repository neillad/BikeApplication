import 'package:flutter/material.dart';

class suzuki_delhi extends StatelessWidget {
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
                            " Dwarka Suzuki, Palam",
                            "D-3, Main Palam Dabri Road, Mahavir Enclave, Dwarka, New Delhi, Delhi - 110045",
                            "9250000141"),
                        showroom_built(
                            "Anand Suzuki, Raja Garden",
                            "E-1, Bali Nagar, Opp Metro Pillar No. 368, Delhi - 110015",
                            "9810001568"),
                        showroom_built(
                            "Shrishakti Motors, Krishna Nagar",
                            "B-14, Main East Krishna Nagar, Delhi - 110051",
                            "8800767878"),
                        showroom_built(
                            "Umang Suzuki, Pitampura",
                            "B-300, Saraswati Vihar, Delhi - 110034",
                            "9868701172"),
                        showroom_built(
                            "Ganpati Suzuki, Kabir Nagar",
                            "C-2/8 Main 100ft Road, Delhi - 110094",
                            "9211641111")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Dream Suzuki - Patel Nagar, West Patel Nagar",
                            "1/1 , Delhi - 110008",
                            "9999589671"),
                        showroom_built(
                          "Shiva Suzuki, Dilshad Garden",
                          "B-3, Main G T Road, Opp. Dilshad Garden Metro Station, Dilshad Garden Industrial Area, Delhi - 110095",
                          "7838413008",
                        ),
                        showroom_built(
                            "Ganpati Suzuki - Bhajanpura, Khazoori Khas",
                            "Near Bank Of Baroda, F-671, Wazirabad Rd, Block C 2, Bhajanpura, Delhi - 110094",
                            "7210206010"),
                        showroom_built(
                            "Dharam Suzuki - Nangloi, Nangloi",
                            "Aman Puri,Najafgarh Road, Delhi - 110041",
                            "9311665957"),
                        showroom_built(
                            "Rohini Suzuki, Rohini",
                            "Parvg Sales Pvt. Ltd. Plot No. 137, Pocket H-34, Sector-3, (Near Vishram Chowk), Delhi - 110085",
                            "8447184342")
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
