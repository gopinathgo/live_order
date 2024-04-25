import 'package:flutter/material.dart';
import 'package:live_order/Screens/LoginPage.dart';
import 'package:live_order/utili/utlily.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child:ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text("Forget Password ?",style: MyFont().txt,),
            ),
            SizedBox(height: 15,),
            Container(
              child: Text("Just Verify Your Mobile Number Code to"
                  "\n set new password",style: MyFont().txtsg,),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    height: 55,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 0,color: Colors.grey),
                          left: BorderSide(width: 1,color: Colors.grey),
                          bottom: BorderSide(width: 1,color: Colors.grey),
                          top: BorderSide(width: 1,color: Colors.grey),
                        ),
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10))
                    ),
                    child:Icon(Icons.phone_android_sharp,color: Colors.grey[400],size: 25,)
                ),

                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffix: InkWell(
                            onTap: (){
                            },
                            child: Text("Resent OTP ?",style: MyFont().txts13,)),
                        hintText: "Mobile Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    height: 55,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 0,color: Colors.grey),
                          left: BorderSide(width: 1,color: Colors.grey),
                          bottom: BorderSide(width: 1,color: Colors.grey),
                          top: BorderSide(width: 1,color: Colors.grey),
                        ),
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10))
                    ),
                    child:Icon(Icons.message,color: Colors.grey[400],size: 25,)
                ),
                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter OTP",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    height: 55,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 0,color: Colors.grey),
                          left: BorderSide(width: 1,color: Colors.grey),
                          bottom: BorderSide(width: 1,color: Colors.grey),
                          top: BorderSide(width: 1,color: Colors.grey),
                        ),
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10))
                    ),
                    child:Icon(Icons.lock,color: Colors.grey[400],size: 25,)
                ),
                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Create a New Password",
                        suffixIcon: Icon(Icons.remove_red_eye,size: 25,color: Colors.grey[400],),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(0, 55),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.deepPurple
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  }, child: Text("SIGN IN")),
            ),
            SizedBox(height: 40,),
            Center(
              child: Text("Want to go back ?",style: MyFont().txts13,),
            ),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(right: 130,left: 130),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(0, 45),
                    shadowColor: Color(0),
                    backgroundColor: Colors.white12,
                    side: BorderSide(width: 1,color: Colors.grey)
                  ),

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  }, child: Text("BACK",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),)),
            )
          ],
        ),
      ),
    );
  }
}
