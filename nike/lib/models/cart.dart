import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREEK',
        price: 250,
        imagepath: 'images/pngegg (3).png',
        description:
            'Created for the hardwood but taken to the streets, the Nike Dunk Low Retro returns with crisp overlays and original team colors.'),
    Shoe(
        name: 'Nike Dunk Low Retro',
        price: 175,
        imagepath: 'images/pngegg (2).png',
        description:
            'Created for the hardwood but taken to the streets, the Nike Dunk Low Retro returns with crisp overlays and original team colors.'),
    Shoe(
        name: 'Nike Dunk Low Retro',
        price: 180,
        imagepath: 'images/pngegg.png',
        description:
            'Created for the hardwood but taken to the streets, the Dunk Low returns with a subtly festive message and colors.')
  ];

  //list of items in userr cart
  List<Shoe> userCart = [];

  //get list of shoees ofor sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removItemFromeCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void removeIemFromCart(Shoe shoe) {}
}
