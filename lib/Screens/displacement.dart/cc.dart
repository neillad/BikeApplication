import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/displacement.dart/above500cc.dart';
import 'package:otpapplication/Screens/displacement.dart/bet110-150cc.dart';
import 'package:otpapplication/Screens/displacement.dart/bet150-200cc.dart';
import 'package:otpapplication/Screens/displacement.dart/bet250cc-500cc.dart';
import 'package:otpapplication/Screens/displacement.dart/upto110cc.dart';

class cc extends StatefulWidget {
  const cc({Key? key}) : super(key: key);

  @override
  _ccState createState() => _ccState();
}

class _ccState extends State<cc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Column(
                children: [
                  mymethed("Upto", "110cc", upto110cc()),
                  mymethed("Between", "150cc - 200cc", bet150_200cc()),
                  mymethed("Between", "250cc - 500cc", bet250_500cc()),
                ],
              ),
              Column(
                children: [
                  mymethed("Between", "110cc - 150cc", bet110_150cc()),
                  mymethed("Between", "200cc - 250cc", bet150_200cc()),
                  mymethed("Above", "500cc +", above500()),
                ],
              )
            ],
          )),
    );
  }

  Container mymethed(String text1, String text2, CallbackAction) {
    return Container(
      height: 100,
      width: 165,
      margin: EdgeInsets.all(15.5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => CallbackAction));
        },
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 19,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
