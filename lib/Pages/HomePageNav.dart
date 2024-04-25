import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_order/Screens/SearchPage.dart';

import '../modelClass/modelclass.dart';

class HomePageNav extends StatefulWidget {
  const HomePageNav({super.key});

  @override
  State<HomePageNav> createState() => _HomePageNavState();
}

class _HomePageNavState extends State<HomePageNav> {
  final List<String> _list = [
    "https://images.pexels.com/photos/7014337/pexels-photo-7014337.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1037992/pexels-photo-1037992.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3342739/pexels-photo-3342739.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/887353/pexels-photo-887353.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  List<getproduct> Getproducts = [];

  List<getmilk> GetMilk = [];

  bool isVisible = false;


  @override
  void initState() {
    super.initState();
    Getproducts.add(getproduct(photo: "assets/image/image1.png"));
    Getproducts.add(getproduct(photo: "assets/image/unlock.png"));
    Getproducts.add(getproduct(photo: "assets/image/image1.png"));
    Getproducts.add(getproduct(photo: "assets/image/unlock.png"));
    Getproducts.add(getproduct(photo: "assets/image/image1.png"));
    Getproducts.add(getproduct(photo: "assets/image/unlock.png"));
    Getproducts.add(getproduct(photo: "assets/image/image1.png"));
    Getproducts.add(getproduct(photo: "assets/image/unlock.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
    GetMilk.add(getmilk(photo: "assets/image/water-bottle.png"));
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.deepPurple,
                  ),
                  child: Container(
                    // margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Live Order",
                            style:
                            TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 79,
                        ),
                        Icon(
                          Icons.notifications_none,
                          size: 25,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                            },
                          child: Icon(
                            Icons.event_note_rounded,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          size: 25,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/Gopi Image 2.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  margin: EdgeInsets.only(top: 150, left: 40, right: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search products/molecule",
                      ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: CarouselSlider(
                  items: _list
                      .map(
                        (item) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 700,
                      ),
                    ),
                  )
                      .toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              height: 210,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sellers Inspired By Your Purchase",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Pick your favourite sellers & order",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  color: Colors.blue,
                                  width: 1,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: Size(100, 0)),
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                        child: Container(
                          child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 20,
                                childAspectRatio: MediaQuery.of(context)
                                    .size
                                    .width /
                                    (MediaQuery.of(context).size.height / 2),
                              ),
                              itemCount: Getproducts.length,
                              itemBuilder: (contex, index) {
                                return Container(
                                  // padding: EdgeInsets.o,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.asset(
                                    Getproducts[index].photo,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Top/Most Ordered Products",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "In Bangalore",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  color: Colors.blue,
                                  width: 1,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: Size(100, 0)),
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                        child: Container(
                          child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 20,
                                childAspectRatio: MediaQuery.of(context)
                                    .size
                                    .width /
                                    (MediaQuery.of(context).size.height / 3),
                              ),
                              itemCount: Getproducts.length,
                              itemBuilder: (contex, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isVisible = false;
                                          });
                                        },
                                        child: Visibility(
                                          visible: isVisible,
                                          child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Icon(
                                                  Icons.favorite_outlined),
                                              alignment: Alignment.topRight),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isVisible = true;
                                          });
                                        },
                                        child: Visibility(
                                          visible: !isVisible,
                                          child: Container(
                                              margin: EdgeInsets.all(10),
                                              child:
                                              Icon(Icons.favorite_border),
                                              alignment: Alignment.topRight),
                                        ),
                                      ),
                                      Container(
                                        // margin: EdgeInsets.only(bottom: 0),
                                        child: Image.asset(
                                          GetMilk[index].photo,
                                          fit: BoxFit.cover,
                                        ),
                                        // color: Colors.red,
                                        height: 80,
                                        width: 80,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Abilify(aripiprazole) I…",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Abilify(aripiprazole) I…",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                            fontSize: 13),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "MRP ₹ 80.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "GST: 12%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Contains",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Sodium Picosul...",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 70),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text("Add To Cart"))),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Top/Most Ordered Products",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "In Bangalore",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  color: Colors.blue,
                                  width: 1,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: Size(100, 0)),
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                        child: Container(
                          child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 20,
                                childAspectRatio: MediaQuery.of(context)
                                    .size
                                    .width /
                                    (MediaQuery.of(context).size.height / 3),
                              ),
                              itemCount: Getproducts.length,
                              itemBuilder: (contex, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isVisible = false;
                                          });
                                        },
                                        child: Visibility(
                                          visible: isVisible,
                                          child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Icon(
                                                  Icons.favorite_outlined),
                                              alignment: Alignment.topRight),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isVisible = true;
                                          });
                                        },
                                        child: Visibility(
                                          visible: !isVisible,
                                          child: Container(
                                              margin: EdgeInsets.all(10),
                                              child:
                                              Icon(Icons.favorite_border),
                                              alignment: Alignment.topRight),
                                        ),
                                      ),
                                      Container(
                                        // margin: EdgeInsets.only(bottom: 0),
                                        child: Image.asset(
                                          GetMilk[index].photo,
                                          fit: BoxFit.cover,
                                        ),
                                        // color: Colors.red,
                                        height: 80,
                                        width: 80,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Abilify(aripiprazole) I…",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Abilify(aripiprazole) I…",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                            fontSize: 13),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "MRP ₹ 80.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "GST: 12%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Contains",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Sodium Picosul...",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 70),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text("Add To Cart"))),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 170,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shop By Manufacturer",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Best manufacturer picked for you",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                side:
                                BorderSide(color: Colors.blue, width: 1),
                                fixedSize: Size(100, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(100))),
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                          child: Container(
                            child: GridView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                      (MediaQuery.of(context).size.height / 2),
                                ),
                                itemCount: Getproducts.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Image.asset(
                                      Getproducts[index].photo,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }),
                          )),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 16,right: 16),
              height: 270,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shop By Manufacturer",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Best manufacturer picked for you",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),

                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                              side: BorderSide(color: Colors.blue,width: 1),
                              elevation: 0,
                              fixedSize: Size(100, 0)
                          ),
                          onPressed: (){}, child: Text(
                        "View All",
                        style: TextStyle(color: Colors.blue),
                      ))
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      child: Container(
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 20,
                                childAspectRatio: MediaQuery.of(context).size.width/
                                    (MediaQuery.of(context).size.height/1)
                            ),
                            itemCount: Getproducts.length,
                            itemBuilder: (context, index){
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(width: 1,color: Colors.grey)
                                ),
                                child: Image.asset(Getproducts[index].photo,fit: BoxFit.cover,),
                              );
                            }),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 16,right: 16),
              height: 250,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(top:10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shop By Manufacturer",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Best manufacturer picked for you",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                        child: Container(
                          child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: MediaQuery.of(context).size.width/
                                      (MediaQuery.of(context).size.height/1)
                              ),
                              itemCount: Getproducts.length,
                              itemBuilder: (context, index){
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(width: 1,color: Colors.grey)
                                  ),
                                  child: Container(
                                      margin: EdgeInsets.only(left: 16,top: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Form Soft",style: TextStyle(
                                                  fontSize: 16, fontWeight: FontWeight.bold),),
                                              SizedBox(height: 10,),
                                              Text("Manage your store inventory, \n"
                                                  "Stock & Sales, Billing, Rack \n "
                                                  "Management etc...",style: TextStyle(
                                                fontSize: 13,
                                              ),),
                                              SizedBox(height: 10,),
                                              Container(
                                                // margin: EdgeInsets.only(right: 70),
                                                  child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          elevation: 0
                                                      ),
                                                      onPressed: () {},
                                                      child: Text("Get"))),
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 30,bottom: 20),
                                            alignment: Alignment.center,
                                            height: 80,
                                            width: 100,
                                            child: Image.asset(GetMilk[index].photo,fit: BoxFit.cover,),
                                          ),
                                        ],
                                      )
                                  ),

                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
