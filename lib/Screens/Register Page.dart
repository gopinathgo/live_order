import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_order/Main%20HomePage/HomePage.dart';
import 'package:live_order/Screens/SingUpPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utili/utlily.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  PageController _controller = PageController();

  bool lastPage =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index){
              setState(() {
                lastPage = (index == 1) ;
              });
            },
            controller: _controller ,
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 355, left: 16, top: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUpPage()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.deepPurple,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      "Sign Up",
                      style: MyFont().txt,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      "India's First B2B 'Pharma Eco System' Plattorm",
                      style: MyFont().txts1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      "Firm Contact Information",
                      style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.person,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Contact Person Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.email,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "E-Mail Address",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Address Line 1",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Address Line 2",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.pin,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Pin Code",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.map,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "State",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.location_city,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "City",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.area_chart,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Area",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 355, left: 16, top: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUpPage()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.deepPurple,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      "Sign Up",
                      style: MyFont().txt,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      "India's First B2B 'Pharma Eco System' Plattorm",
                      style: MyFont().txts1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      "Firm Contact Information",
                      style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.person,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Contact Person Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.email,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "E-Mail Address",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Address Line 1",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Address Line 2",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.pin,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Pin Code",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 0, color: Colors.grey),
                                  left:
                                      BorderSide(width: 1, color: Colors.grey),
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                  top: BorderSide(width: 1, color: Colors.grey),
                                ),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: Icon(
                              Icons.map,
                              color: Colors.grey[400],
                              size: 25,
                            )),
                        Container(
                          height: 55,
                          width: 310,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "State",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 855, left: 16, right: 16),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("1")),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    effect: SlideEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.white,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                  lastPage ?

                  Container(
                      margin: EdgeInsets.only(left: 100),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(color: Colors.white),
                        ),
                      )):Container(
                      margin: EdgeInsets.only(left: 100),
                      child: InkWell(
                        onTap: (){
                          _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
