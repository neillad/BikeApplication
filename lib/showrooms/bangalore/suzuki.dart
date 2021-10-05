import 'package:flutter/material.dart';

class suzuki_bangalore extends StatelessWidget {
  const suzuki_bangalore({Key? key}) : super(key: key);

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
                            "Saptagiri Suzuki - Basaveshwarnagar",
                            "No-24, 1st main, Opp. Total Gaz, Bangalore - 560079",
                            "7303658271"),
                        showroom_built(
                            "Saptagiri Suzuki - T. Dasarahalli, T Dasarahalli",
                            "No-6,7 &10, T. Dasarahalli Main Road,(Near Metro Station) tumkur Road, Bangalore - 560057",
                            "7303658285"),
                        showroom_built(
                            "Apple Suzuki- Rajarajeshwari Nagar",
                            "10/4, Opp. to RR Nagar Arch, Mysore Main Road, Bangalore - 560039",
                            "8884446502"),
                        showroom_built(
                            "Apple Suzuki - Kanakpura ",
                            "#44/42-1, Near KonanKunte cross, Doddakalasandra, Bangalore - 560062",
                            "8884446503"),
                        showroom_built(
                            "Bhojanna Suzuki, HRBR Layout",
                            "Service Road, Horamavu Junction, 317, Outer Ring Rd, HRBR Layout 1st Block, Bangalore - 560043",
                            "9606333150")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Avanish Suzuki - Vijayanagar, Vijayanagar",
                            "No.1706,17th Cross,Magadi Road,Chord Road,MRCR Service Rd,Near Maruthi Temple, Bangalore - 560040",
                            "9870259722"),
                        showroom_built(
                          "Saptagiri Suzuki - Basaveshwarnagar ",
                          "No-24, 1st main, Opp. Total Gaz, Bangalore - 560079",
                          "7303658271",
                        ),
                        showroom_built(
                            "Saptagiri Suzuki - T. Dasarahalli",
                            "No-6,7 &10, T. Dasarahalli Main Road,(Near Metro Station) tumkur Road, Bangalore - 560057",
                            "7303658285"),
                        showroom_built(
                            "Avanish Suzuki - Vijayanagar, Vijayanagar",
                            "No.1706,17th Cross,Magadi Road,Chord Road,MRCR Service Rd,Near Maruthi Temple, Bangalore - 560040",
                            "9870259722"),
                        showroom_built(
                            "Advaith Suzuki - Basavanagudi, Basavanagudi",
                            "40/1, Sri Venkateshwara Mansion, South End Road, Bangalore - 560004",
                            "9870267260")
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
