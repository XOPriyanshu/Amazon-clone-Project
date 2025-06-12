import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/shoe.dart';
class Cart extends ChangeNotifier{
  //list of items
  List<Shoes> shoeshop=[
    Shoes(description: "High Hills", image: "lib/images/p1.webp", name: "Air Jorden", price: "400"),
    Shoes(description: "Dizzle's", image: "lib/images/p2.webp", name:"Zoom FREAK", price: "100"),
    Shoes(description: "Bajinga", image: "lib/images/p5.webp", name: "Sneaker", price: "200"),
    Shoes(description: "Gentel", image: "lib/images/p4.webp", name: "Air4 Pro", price: "120"),
  ];
  //users cart
List<Shoes> usercart=[];
 //get items on sale
List<Shoes> getShoesList(){
  return shoeshop;
}
// get cart
  List<Shoes> getcartList(){
    return usercart;
  }
  //add items
void additems(Shoes Shoe){
  usercart.add(Shoe);
  notifyListeners();
}
//remove items
  void delitems(Shoes Shoe){
    usercart.remove(Shoe);
    notifyListeners();
  }
}