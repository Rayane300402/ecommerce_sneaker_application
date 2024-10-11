// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_sneaker_application/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(shoe.imagePath)),

          //description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),

          //price + detail
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    // price
                    Text(
                        '\$'+ shoe.price,
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
                // plus button
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ))
              ],
            ),
          )

          //button to add to cart
        ],
      ),
    );
  }
}
