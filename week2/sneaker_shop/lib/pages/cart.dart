import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/shoe.dart';
class Cart extends ChangeNotifier{
  //list of items
  List<Shoes> shoeshop=[
    Shoes(description: "High Hills", image: "lib/images/n1m.jpg", name: "Air Jorden", price: "400"),
    Shoes(description: "Dizzle's", image: "lib/images/n2m.jpg", name:"Zoom FREAK", price: "100"),
    Shoes(description: "Bajinga", image: "lib/images/n1m.jpg", name: "Sneaker", price: "200"),
    Shoes(description: "Gentel", image: "lib/images/n2m.jpg", name: "Air4 Pro", price: "120"),
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