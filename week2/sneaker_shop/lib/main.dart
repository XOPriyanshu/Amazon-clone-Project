import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/pages/intro.dart';
import 'package:sneaker_shop/pages/home.dart';
import 'package:sneaker_shop/pages/cart.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/pages/cartpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Cart(),
      builder: (context,child)=> MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Intro(),
          routes: {
         "home":(context)=>Home(),
            "intro":(context)=>Intro(),
            "cart":(context)=>Cartpage(),
          },
      ),
    );
  }
}
