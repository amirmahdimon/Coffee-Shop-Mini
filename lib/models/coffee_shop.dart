import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black',
      price: '4.10',
      iamgePath: 'images/Rectangle3.png',
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: '5.10',
      iamgePath: 'images/Rectangle2.png',
    ),

    // espresso
    Coffee(
      name: 'Espresso',
      price: '2.10',
      iamgePath: 'images/Rectangle1.png',
    ),
    //  iced coffee

    Coffee(
      name: 'Ice Coffee',
      price: '4.10',
      iamgePath: 'images/Rectangle3.png',
    ),
  ];
  // user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
