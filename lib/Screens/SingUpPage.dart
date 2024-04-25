import 'package:flutter/material.dart';
import 'package:live_order/Screens/LoginPage.dart';
import 'package:live_order/utili/utlily.dart';

import 'Register Page.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 16,right: 16,top: 150),
        child: ListView(
          children: [
            Container(
              child: Text("Sign Up",style: MyFont().txt,),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("Welcome To 'Live Order'",style: MyFont().txts,),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("India's First B2B 'Pharma Eco System' Plattorm",style: MyFont().txts1,),
            ),
            SizedBox(height: 30,),
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
                    child:Icon(Icons.factory,color: Colors.grey[400],size: 25,)
                ),
                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Buyer Firm Name",
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
                    child:Icon(Icons.phone_android_sharp,color: Colors.grey[400],size: 25,)
                ),
                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
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
                    child:Icon(Icons.lock,color: Colors.grey[400],size: 25,)
                ),
                Container(
                  height: 55,
                  width: 310,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye,size: 25,color: Colors.grey[400],),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        )
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:Text("Password should contain 4-16character & should \n contain alphanumeric and special character",style: TextStyle(
                color: Colors.grey
              ), ),
            ),
            SizedBox(height: 30,),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(0, 55),
                  backgroundColor: Colors.deepPurple
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              }, child: Text("REGISTER")),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Already have an account?",style: MyFont().txts,),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 100,right:100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor:Color(0),
                  fixedSize: Size(0, 45),
                  side: BorderSide(width: 1,color:Colors.grey,),
                  backgroundColor: Colors.white,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text("SIGN IN",style: TextStyle(
                  color: Colors.deepPurple
                ),)),
            ),
            SizedBox(height: 30,),
            Container(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Are you a seller ?",style: MyFont().txts,
                  ),SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text("Register here",style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 15,fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
