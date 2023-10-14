import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Free Metcon 5',
        price: '140',
        imagePath: 'assets/images/shoe5.png',
        description:
            'The Nike Free Metcon 5 Premium combines flexibility with stability to help you get the most out of your training programme. Updated "chain-link" mesh cools and flexes as you speed through agility drills, while support at the midfoot and heel braces you for your heaviest sets in the weight room.'),
    Shoe(
        name: 'Nike Metcon 8 Premium',
        price: '240',
        imagePath: 'assets/images/shoe4.png',
        description:
            'You chase the clock, challenging and encouraging each other all in the name of achieving goals and making gains. Our go-to model for training relies on a lighter, more breathable upper than our previous iteration to complement our standards of durability and comfort, so that you can float through your cardio, power through your lifts and dominate your workouts.'),
    Shoe(
        name: 'Nike Free Metcon 4',
        price: '245',
        imagePath: 'assets/images/shoe6.png',
        description:
            'The Nike Free Metcon 4 combines flexibility with stability to help you get the most out of your training programme. Updated "chain-link" mesh cools and flexes as you speed through agility drills, while support at the midfoot and heel braces you for your heaviest sets in the weight room.'),
    Shoe(
        name: 'Nike Metcon 9 AMP',
        price: '357',
        imagePath: 'assets/images/shoe7.png',
        description:
            'Whatever your "why" is for working out, the Metcon 9 makes it all worth it. We improved on the 8 with a larger Hyperlift plate and added rubber rope wrap. Intended for lifters, trainers and go-getters, some of the greatest athletes in the world swear by it, and its still the gold standard that delivers day after day. This balanced, vitamin-inspired design radiates with the vibrant energy you bring to your workout and those around you.')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
