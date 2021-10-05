import 'package:flutter/material.dart';

class suzuki_mumbai extends StatelessWidget {
  const suzuki_mumbai({Key? key}) : super(key: key);

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
                            "Dolphin Suzuki, Saki Naka",
                            "Shop No.10,11,12,13,Opp BMC School,Andheri Ghatkopar Link Road,Below Apex Hospital, Mumbai - 400072",
                            "7303654887"),
                        showroom_built(
                            "Kiran Suzuki, Goregaon (W)",
                            "Shop No.2127-2128/268, Motilal Nagar No.1, Near Vibgyor School, Link Road, Opp. Harmony Mall, Mumbai - 400062",
                            "9319431824"),
                        showroom_built(
                            "Mark Suzuki, Kurla West",
                            "Shaukat House, (Old Court Building), Opp. Kurla Garden, Near Kurla Court, LBS Marg, Mumbai - 400070",
                            "8879055721"),
                        showroom_built(
                            "Keyan Suzuki, Borivali(E)",
                            "Keyan motohub LLP Gala No. 7 & 8, Borkar Compound, W.E. Highway, Opp. Metro Wholesale, Near Magathane Depot, Mumbai - 400066",
                            "9319432430"),
                        showroom_built(
                            "Riya Suzuki - Bhandup, Bhandup (W)",
                            "Unit No.1, Bharat Industrial, Near IDBI Bank, LBS Marg, Mumbai - 400078",
                            "8879255360")
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
                            "Gajendra Suzuki, Dahisar East",
                            "Gala No. 02, 03, 04, Ansari House, Ansari Compound, Near Maharaja Hotel, W. E. Highway, Mumbai - 400068",
                            "7777026243"),
                        showroom_built(
                            "Dream Suzuki, Andheri (W)",
                            "332, S. V. Road, Near Subway, Andheri (W), Mumbai - 400058",
                            "9833767825"),
                        showroom_built(
                            "S. P. Suzuki, Kandivali West",
                            "97 A- Kandivali Co Op, Charkop Industrial Estate,, Mumbai - 400067",
                            "9326904764")
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
