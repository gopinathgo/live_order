import 'package:flutter/material.dart';
import 'package:live_order/Main%20HomePage/HomePage.dart';
import 'package:live_order/Screens/LoginPage.dart';
import 'package:live_order/Screens/Register%20Page.dart';
import 'package:live_order/utili/utlily.dart';
import 'package:pinput/pinput.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 16, left: 16),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(right: 340, left: 0, top: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.deepPurple,
                    size: 30,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 300,
              child: Image(image: AssetImage("assets/image/image1.png")),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "Verifying OTP",
                  style: MyFont().txt1,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Container(
              child: Text("Please wait 5 second we are verifying OTP",
                  style: MyFont().txtsg),
            )),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                child: Text(
                  "automatically that we have sent to",
                  style: MyFont().txtsg,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                child: Text(
                  "your mobile number.",
                  style: MyFont().txtsg,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Pinput(
                length: 4,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: Size(0, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Text("Send OTP")),
            )
          ],
        ),
      ),
    );
  }
}
