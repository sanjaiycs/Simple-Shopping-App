import 'package:flutter/material.dart';

import '../components/shop.dart';
import '../components/shoptile.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    backgroundColor: Colors.grey[200];
    return Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
            Shop shop = Shop(name: "white shirt", price: "250", imagepath: "lib/images/animeshirt.webp", desc: "Naruto anime shirt");
            return shoptile(shop: shop ,);
          }))
        ],
      );
  }
}
