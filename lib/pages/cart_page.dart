// ignore_for_file: empty_statements, prefer_const_constructors

import 'package:ecommerce_sneaker_application/components/cart_item.dart';
import 'package:ecommerce_sneaker_application/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
                'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      // get individual shoe
                      Shoe individualShoe = value.getUserCart()[index];

                      // return the cart item
                      return CartItem(shoe: individualShoe,);
                    },
                )
            )
          ],
        ),
      ),
    );
  }
}
