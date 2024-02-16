import 'package:flutter/material.dart';
import 'package:nike/components/cart_item.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';

import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //hading
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'My Cart',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    //get individual shoe
                    Shoe individualShoe = value.getUserCart()[index];

                    //return the cart item
                    return CartItem(
                      shoe: individualShoe,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
