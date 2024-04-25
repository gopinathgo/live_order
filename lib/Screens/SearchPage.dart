import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../modelClass/modelclass.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController _myController = TextEditingController();

  bool _chechlist  = false;

  List<getlist> GetLists = [];

  bool isVisible = false;

  bool _checkheart = false;

  @override
  void initState() {
    _chechlist = false;
    super.initState();
    GetLists.add(getlist(partner: "Sponsored", name: "Calpol 650 MG Tablet", company: "Glaxosmithkline Pharmaceuticals Ltd.", pack: "Pack Size: 15 tablets", product: "Product", price: 76.80));
    GetLists.add(getlist(partner: "Sponsored", name: "Calpol 650 MG Tablet", company: "Glaxosmithkline Pharmaceuticals Ltd.", pack: "Pack Size: 15 tablets", product: "Product", price: 76.80));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        color: Colors.deepPurple,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      margin: EdgeInsets.only(top: 80,left: 16,right: 80,bottom: 0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.only(top: 0),
                                child: Icon(Icons.search),
                              )),
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(top: 0,),
                              child: TextFormField(
                                controller: _myController,
                                onChanged:(text){
                                  setState(() {
                                    if (_myController.text.length>0){
                                      _chechlist = true;
                                    }else{
                                      _chechlist = false;
                                    }
                                  });
                                },
                                decoration: InputDecoration(
                                    hintText: "Search products/…",
                                    // contentPadding: EdgeInsets.only(left: 10 ),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.only(top: 0),
                                child: Icon(Icons.menu),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.only(top: 0),
                                child: Icon(Icons.scanner),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                margin: EdgeInsets.only(top: 0),
                                child: Icon(Icons.mic),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 80,left: 350),
                      child: TextButton(
                        onPressed: (){},
                        child: Text("Cancel",style: TextStyle(color: Colors.white),),),
                    ),
                  ],
                )),
            Expanded(
                flex: 4,
                child: _chechlist ? Container(
                  margin: EdgeInsets.only(right: 16,left: 16),
                  child: ListView.builder(
                  itemCount: GetLists.length,
                    itemBuilder: (context, index){
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:EdgeInsets.only(bottom: 10),
                                  child: Text(GetLists[index].partner,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xff674CF3)
                                  ),)),
                              Container(
                                  margin:EdgeInsets.only(bottom: 10),
                                  child: Text(GetLists[index].name,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff002F4F)
                                  ))),
                              Container(
                                  margin:EdgeInsets.only(bottom: 10),
                                  child: Text(GetLists[index].company,style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Color(0xff5B636A)
                                  ))),
                              Container(
                                  margin:EdgeInsets.only(bottom: 10),
                                  child: Text(GetLists[index].pack,style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Color(0xff002F4F)
                                  ))),
                              Container(
                                  margin:EdgeInsets.only(bottom: 10),
                                  child: Text(GetLists[index].product,style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Color(0xff00D3B4)
                                  ))),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isVisible = false;
                              });
                            },
                            child: Visibility(
                              visible: isVisible,
                              child: Container(
                                  // margin: EdgeInsets.all(10),
                                  child: Icon(
                                      Icons.favorite_outlined),
                                 ),
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
                                  // margin: EdgeInsets.all(10),
                                  child:
                                  Icon(Icons.favorite_border),
                                 ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  margin:EdgeInsets.only(right: 00,bottom: 40),
                                  child: Text("& " + GetLists[index].price.toString(),style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff002F4F)
                                  ))),
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
                        ],
                      )
                    );
                    },
                  ),
                ) : Container(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 120,left: 120,top: 200),
                            child: Image.asset("assets/image/folder.png"),
                          ),
                          Container(
                            // margin: EdgeInsets.all(130),
                              child: Text("Nothing Here",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                              ),)
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("You have no search history",style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],
                      ),
                    )
                ),
            )
          ],
        ),
      )
    );
  }
}
