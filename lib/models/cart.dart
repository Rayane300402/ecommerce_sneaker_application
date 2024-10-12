import 'package:ecommerce_sneaker_application/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan 1 Elevate Low",
        price: '219',
        imagePath: 'assets/images/airjordan.png',
        description: "Rise to the occasion in style that soars."),
    Shoe(
        name: 'Nike Tech Hera',
        price: '189',
        imagePath: 'assets/images/hera.png',
        description:
            'Inspired by early-2000s running, here to fulfil all of your chunky sneaker wishes.'),
    Shoe(
        name: 'Nike InfinityRN 4 Blueprint',
        price: '249',
        imagePath: 'assets/images/infinityrn.png',
        description:
            'Maximum cushioning provides elevated comfort for everyday runs.'),
    Shoe(
        name: 'Nike Free Metcon 6',
        price: '205',
        imagePath: 'assets/images/metcon.png',
        description:
            'The Free Metcon 6 opens your world of workout possibilities.'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // removing items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
