import 'package:flutter/material.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removItemFromeCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.only(bottom: 12),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagepath),
          // ignore: unnecessary_string_interpolations
          title: Text(widget.shoe.name),
          subtitle: Text('\$${widget.shoe.price}'),
          trailing: IconButton(
              onPressed: removeFromCart, icon: const Icon(Icons.delete)),
        ),
      ),
    );
  }
}
