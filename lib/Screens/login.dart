import 'package:flutter/material.dart';
import 'package:otpapplication/Screens/login_otp.dart';

//-----------------LOGIN SCREEN -----------------------------------------------
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Future<void> verifyPhone() async {}

class _LoginState extends State<Login> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Enter Mobile number",
                    prefix: Text("+91"),
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login_OTP(_controller.text)));
                },
                child: Container(
                  height: 50,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
