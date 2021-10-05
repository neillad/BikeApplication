import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/budget/above10.dart';
import 'package:otpapplication/Screens/budget/between1_2.dart';
import 'package:otpapplication/Screens/budget/between2_4.dart';
import 'package:otpapplication/Screens/budget/between4_10.dart';
import 'package:otpapplication/Screens/budget/between50k_1.dart';
import 'package:otpapplication/Screens/budget/upto50k.dart';

class budget extends StatefulWidget {
  const budget({Key? key}) : super(key: key);

  @override
  _budgetState createState() => _budgetState();
}

class _budgetState extends State<budget> {
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
                  mymethed("Upto", "50,000 Rs", upto50k()),
                  mymethed("Between", "₹ 1-2 Lakh", betweem1_2()),
                  mymethed("Between", "₹ 3-4 Lakh", between2_4()),
                ],
              ),
              Column(
                children: [
                  mymethed("Between", "50K - 1 Lakh", between50k_1()),
                  mymethed("Between", "₹ 4-10 Lakhs", between4_10()),
                  mymethed("Above", "₹ 10 Lakhs", above10()),
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
                  fontSize: 21,
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
