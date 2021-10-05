import 'package:flutter/material.dart';

class royalenfield_mumbai extends StatelessWidget {
  const royalenfield_mumbai({Key? key}) : super(key: key);

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
                            "Synergy Auto,Saki Naka",
                            "Ground Floor, Andheri Ghatkopar Link road,\n Beside Hotel Grand Peninsula , \nMumbai - 400072",
                            "8286046565"),
                        showroom_built(
                            "Voyage Motors, Kandivali West",
                            "Shop No.1, Sambhav Darshan, Opposite Poisar Masjid, S.V.Road, Mumbai - 400067",
                            "9619621103"),
                        showroom_built(
                            "Ishna Wheels, Goregaon (W)",
                            "No 266/2116,New Link Road, Mumbai - 400104",
                            "9619554921"),
                        showroom_built(
                            "Royal Enfield First Mumbai Store, Worli",
                            "135, Dr. Annie Besant Road, Opp. Doordarshan Tower, Mumbai - 400018",
                            "9619548445"),
                        showroom_built(
                            "Royal Enfield Company Store - Bandra, Bandra(W)",
                            "Shop No 6 & 7, Imperial Plaza, 27th & 30th Road Jn, Linking Road, Opposite Bandra Hindu Association, Mumbai - 400050",
                            "9619547858")
                      ],
                    ),
                    Column(
                      children: [
                        showroom_built(
                            "Unison Automobiles - Borivali, Borivali (W)",
                            "Shop No 4, 5 & 6, Bldg No 3, Ic Colony, New Link Road, Mumbai - 400103",
                            "7506555038"),
                        showroom_built(
                          "Voyage Motors - Goregaon, Goregaon (E)",
                          "Gala No 10, Gautam Chemical Compound, I.B Patel Road, Mumbai - 400063",
                          "9619597082",
                        ),
                        showroom_built(
                            "Ishna Wheels - Andheri (W), Vile Parle West",
                            "Shop No. 4 & 5 Talati Apts,S.V Road Near Irla Bridge, Mumbai - 400058",
                            "9619563707"),
                        showroom_built(
                            "Motokraft Automobiles, Chembur",
                            "PN 573, CTS No 386, SN 86/SG/1C, Sion Trombay Rd, Kumbharwada, Opp. Wasan Motors, Mumbai - 400071",
                            "9619564409"),
                        showroom_built(
                            "Royal Enfield Khar Company Store",
                            "Shop No 4&5 ,Ground Floor,Linking Road Opposite Khar Telephone Exchange, Khar West, Mumbai - 400052",
                            "022-65038444")
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
