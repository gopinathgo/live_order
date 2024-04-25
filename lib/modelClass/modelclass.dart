class getproduct {
  String photo;

  getproduct({required this.photo});
}

class getmilk {

  String photo;
  getmilk({required this.photo});
}

class getlist {
  late String partner;
  late String name;
  late String company;
  late String pack;
  late String product;
  late dynamic price;
  getlist({required this.partner,required this.name,required this.company,required this.pack,required this.product,required this.price});
}