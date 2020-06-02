import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_learn_app/shop/ShopList.dart';
import 'package:flutter_learn_app/shop/ShopListItem.dart';
import 'package:flutter_learn_app/widget/Counter2.dart';
import 'package:flutter_learn_app/widget/TutorialHome.dart';

//void main() {
//  runApp(new MaterialApp(
//    title: 'Flutter Tutorial',
//    home: new TutorialHome(new Counter2() , "sadvjasv"),
//  ));
//}


void main() {
  runApp(new MaterialApp(
    title: 'Shopping App',
    home: new ShoppingList(
      products: <Product>[
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}