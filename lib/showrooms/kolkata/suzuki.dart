import 'package:flutter/material.dart';

class suzuki_kolkata extends StatelessWidget {
  const suzuki_kolkata({Key? key}) : super(key: key);
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
                            "Tanishq Suzuki, Shibrampur",
                            "351, Ho-Chi-Minh Sarani, Biren Roy Road West, Near Green Field City, Jayashree Park, Kolkata - 700061",
                            "9831323377"),
                        showroom_built(
                            "Animesh Suzuki - Barrackpore, Barrackpore",
                            "85, Barasat Kalyani Road Nonachandanpukur, Kolkata - 700122",
                            "8584074180"),
                        showroom_built(
                            "Tanishq Suzuki - Shibrampur Mauza, Shibrampur Mauza",
                            "P-507/1, D.H. Road (puroshibata), Kolkata - 700061",
                            "8017007193"),
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Simrah Suzuki, Park Circus",
                            "P-298, Dargah Road, Kolkata - 700017",
                            "9831445487"),
                        showroom_built(
                          "Chandrani Suzuki, Madhyamgram",
                          "Birati, Jessore Road, Kolkata - 700051",
                          "6289282545",
                        ),
                        showroom_built(
                            "CJ Suzuki - Tollygunge, Tollygunge",
                            "142/1A, Prince Anwarsha Road Near Dhaka Kali Bari, Kolkata - 700033",
                            "6290185977"),
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
