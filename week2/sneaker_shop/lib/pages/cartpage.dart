import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoe.dart';
import 'package:sneaker_shop/pages/cart.dart';
import 'package:sneaker_shop/pages/Cart_Items.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder:(context,value,child)=>Scaffold(
          backgroundColor: Colors.grey[300],
          body:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              SizedBox(height: 30),
              Expanded(child:ListView.builder(
                itemCount: value.getcartList().length,
                  itemBuilder: (context,index){
                Shoes individualshoe=value.getcartList()[index];
                return CartItems(Shoe: individualshoe,);
              }))
            ],
          ),),
        )
    );
  }
}
