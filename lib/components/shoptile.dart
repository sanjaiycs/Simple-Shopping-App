import 'package:flutter/material.dart';
import 'package:sample/components/shop.dart';

class shoptile extends StatelessWidget {
  Shop shop;
  shoptile({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:
              Image.asset(shop.imagepath),
          ),

          Text(shop.desc,
            style: TextStyle(color: Colors.grey),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(shop.name,style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20),),

                    const SizedBox(height: 5,),

                    Text('Rs. '+shop.price),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft:Radius.circular(12),bottomRight:Radius.circular(12))),
                    child: Icon(Icons.add,color: Colors.white,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
