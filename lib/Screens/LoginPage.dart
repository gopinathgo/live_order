import 'package:flutter/material.dart';
import 'package:live_order/Screens/ForgetPage.dart';
import 'package:live_order/utili/utlily.dart';
import 'OTPPage.dart';
import 'SingUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 16,left: 16),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150,right: 90),
              child: Text("Log In",style: MyFont().txt,),
            ),
            SizedBox(height: 15,),
            Container(
              child: Text("Welcome To 'Live Order'",style: MyFont().txts,),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("India's First B2B 'Pharma Eco System' Plattorm",style: MyFont().txts1,),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                          child: Container(
                        child: Icon(Icons.phone_android_sharp,color: Colors.grey[400],size: 25,),
                      )),
                      VerticalDivider(
                        width: 1.0,
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10.0),
                                  hintText: "Email",
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                                  // )
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
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
                          hintText: "Email",
                          border: OutlineInputBorder(
                           borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                          )
                      ),
                    ),
                  ),
                ],
              ),
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
                    child:Icon(Icons.lock,color: Colors.grey[400],size:25,)
                ),
                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        )
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left:276),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPage()));
                },child: Text("ForgetPassword?",style: TextStyle(
                color: Colors.deepPurple
              ),),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPPage()));
              },
                  style: ElevatedButton.styleFrom(fixedSize: Size(300, 55), shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                    primary: Colors.deepPurple,
                  ),
                  child:Text("SIGN IN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
            ),
            SizedBox(height: 40,),
            Center(
              child: Container(
                child: Text("Don`t have an account?",style: MyFont().txts,),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 100,right: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color(0),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                     side: BorderSide(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(00, 45)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUpPage()));
                },child: Text("GED STARTED",style: TextStyle(
                color: Colors.green
              ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
