import 'package:flutter/material.dart';

class royalenfield_kolkata extends StatelessWidget {
  const royalenfield_kolkata({Key? key}) : super(key: key);

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
                            "Shah Distributors, Ballygunge",
                            "8/1, Sarat Bose Road, Kolkata - 700020",
                            "9167596687"),
                        showroom_built(
                            "Kolkata Bike Zone, Sukanta Pally",
                            "No 204, Ground Floor, Chinar Park, Nowa Para,Beside Pipal Tree, Kolkata - 700160",
                            "9167513932"),
                        showroom_built(
                            "Austin Distributors, Dharamtala",
                            "19 Jawaharlal Nehru Road, Kolkata - 700087",
                            "9167649873"),
                        showroom_built(
                            "Bishnu Oil Company, Kamarhati",
                            "27/1 B T Road, Barrackpore Trunk Rd, Kolkata - 700058",
                            "9167694971"),
                        showroom_built(
                            "Austin Distributors Pvt. Ltd, Baruipur H O",
                            "Dihimadanmolla, Jogibattala,South 24 Parganas,, Kolkata - 700145",
                            "9167585753")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Harshit Tie-Up, Maheshtala",
                            "C2/97, New Gangarampur Road, Kolkata - 700141",
                            "9167590231"),
                        showroom_built(
                          "East India Agro Industries, Shakespeare Sarani",
                          "No 47 C, Opposite Kala Mandir , Kolkata - 700017",
                          "9167649853",
                        ),
                        showroom_built(
                            "Harshit Tie Up - Thakurpukur Bazar, Joka",
                            "No 275, Diamond Harbour Road, Thakurpukur Bazar, Kolkata - 700063",
                            "9167432368"),
                        showroom_built(
                            "Country Motors , Dum Dum",
                            "Door No 513, Helabattala Barasat, Krishna Nagar Road,North 24 Parganas,, Kolkata - 700124",
                            "9167646024"),
                        showroom_built(
                            "East India Agro Indus.Pvt Ltd",
                            "47-C Shakespear Sarani(Opp Kala Mandir), Kolkata",
                            "033-228823300")
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
