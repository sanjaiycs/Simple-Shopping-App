import 'package:sample/components/shop.dart';

class Cart{
  List <Shop> shirtshop=[
    Shop(name: "anime white shirt",
        price:"250",
        imagepath: "lib/images/animeshirt.webp",
        desc: "naruto anime shirt"),

    Shop(name: "captain america",
        price:"850",
        imagepath: "lib/images/cap.webp",
        desc: "amazing anime shirt"),

    Shop(name: "dr.doom shirt",
        price:"250",
        imagepath: "lib/images/dr.doom.webp",
        desc: "amazing anime shirt"),

    Shop(name: "Harry potter",
        price:"250",
        imagepath: "lib/images/harrypotter.webp",
        desc: "amazing anime shirt"),

  ];

// list of items in user cart

  List <Shop> usercart=[];

  // get list of shirt
  List <Shop> getShoplist(){
    return shirtshop;
  }

  //get cart
   List <Shop> getUsercart(){
    return usercart;
   }

   //add item to cart
   void Itemtocart (Shop shop){
    usercart.add(shop);
   }

   //remove item from cart
  void removeitemfromcart (Shop shop){
    usercart.remove(shop);
  }

}