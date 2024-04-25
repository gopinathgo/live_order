import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:live_order/Pages/CartPage.dart';
import 'package:live_order/Pages/HomePageNav.dart';
import 'package:live_order/Pages/MenuPage.dart';
import 'package:live_order/Pages/OrderPage.dart';
import 'package:live_order/Pages/SelectPage.dart';
import '../modelClass/modelclass.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  void _selectvalue (index){
    setState(() {
      _valueindex = index;
    });
  }

  int _valueindex = 0;

final List<Widget> _pages = [
HomePageNav(),
  CartApge(),
SelectPage(),
  OrderPage(),
  MenuPage()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F8FD),
      /*  appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: Text("Live Order",style: TextStyle(
          fontSize: 25,
        ),),
        actions: [
          Icon(Icons.notifications_none,size: 25,),
          SizedBox(width: 15,),
          Icon(Icons.event_note_rounded,size: 25,),
          SizedBox(width: 15,),
          Icon(Icons.favorite_outline,size: 25,),
          SizedBox(width: 15,),
          Icon(Icons.shopping_bag_outlined,size: 25,),
          SizedBox(width: 15,),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            // height: 20,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("assets/image/Gopi Image 2.jpeg"),fit: BoxFit.cover)
            ),
          ),
          SizedBox(width: 16,),
        ],
        elevation: 0,
      ),*/
      body: _pages[_valueindex],
      bottomNavigationBar: SizedBox(
        height: 66,
        child: BottomNavigationBar(
          currentIndex: _valueindex,
            type: BottomNavigationBarType.fixed,
            items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Iconsax.shopping_bag),label: "Smart Cart",),
          BottomNavigationBarItem(icon: Icon(Iconsax.wallet),label: "Order To Seller",),
          BottomNavigationBarItem(icon: Icon(Iconsax.money),label: "My Orders",),
          BottomNavigationBarItem(icon: Icon(Iconsax.menu),label: "Menu",),
        ],
        onTap: _selectvalue
        ),
      ),
    );
  }
}
