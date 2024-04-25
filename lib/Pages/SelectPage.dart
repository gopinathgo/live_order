import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        Icon(
                          Icons.event_note_rounded,
                          size: 25,
                          color: Colors.white,
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
                      // suffixIcon: Row(
                      //   mainAxisAlignment:MainAxisAlignment.end,
                      //   children: <Widget>[
                      //     Icon(Icons.menu),
                      //     Icon(Icons.menu),
                      //     Icon(Icons.menu),
                      //   ],
                      // )
                      // fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text("Select Page"),
            )
          ],
        ),
      ),
    );
  }
}
