import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/home.dart';
import 'package:otpapplication/Screens/login.dart';
import 'package:pinput/pin_put/pin_put.dart';

class Login_OTP extends StatefulWidget {
  final String phone;
  Login_OTP(this.phone);
  @override
  _Login_OTPState createState() => _Login_OTPState();
}

class _Login_OTPState extends State<Login_OTP> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  late String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  //final _pageController = PageController();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(43, 46, 66, 1),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Verify ${widget.phone}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: PinPut(
                    fieldsCount: 6,
                    withCursor: true,
                    textStyle:
                        const TextStyle(fontSize: 25.0, color: Colors.white),
                    eachFieldWidth: 40.0,
                    eachFieldHeight: 55.0,
                    //onSubmit: (String pin) => _showSnackBar(pin),
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: pinPutDecoration,
                    selectedFieldDecoration: pinPutDecoration,
                    followingFieldDecoration: pinPutDecoration,
                    pinAnimationType: PinAnimationType.fade,
                    onSubmit: (pin) async {
                      try {
                        await FirebaseAuth.instance
                            .signInWithCredential(PhoneAuthProvider.credential(
                                verificationId: _verificationCode,
                                smsCode: pin))
                            .then((value) async {
                          if (value.user != null) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                            print("pass to home");
                          }
                        });
                      } catch (e) {
                        FocusScope.of(context).unfocus();
                        _scaffoldkey.currentState!.showSnackBar(
                            SnackBar(content: Text("Invalid Input")));
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Did not get OTP, Resend?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                /*Container(
                  height: 50,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ),*/
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(Login());
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 90, left: 180),
                    height: 50,
                    width: 160,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(Login());
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  __verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              print("User Logged In");
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    __verifyPhone();
  }
}
