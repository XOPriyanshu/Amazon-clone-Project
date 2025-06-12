import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/ShoesTile.dart';
import 'package:sneaker_shop/components/shoe.dart';
import 'package:sneaker_shop/pages/cart.dart';
import 'package:provider/provider.dart';
class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
 void addshoeCart(Shoes shoe){
  Provider.of<Cart>(context,listen:false).additems(shoe);
  showDialog(context: context, builder: (context)=>AlertDialog(title: Text("Successfully Added"),content: Text("Check Your Cart"),));
}
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context,value,child)=>Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10,20,10,0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search'),
                  Icon(Icons.search,color: Colors.black,)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Text("everyone flies.. some fly longer than others", style:TextStyle(color: Colors.grey[600],letterSpacing: 1.3),),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Text("Hot Picks 🔥",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),Text("See all",style: TextStyle(color: Colors.blue),)],),
            ),
            SizedBox(height: 10),
            Expanded(
              child:ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  Shoes shoe1=value.getShoesList()[index];
                  return ShoesTile(shoes: shoe1,onTap: ()=>addshoeCart(shoe1));
                },),),
            Padding(
                padding: EdgeInsets.only(top:2),
                child: Divider(color: Colors.grey[300],))
          ],
        ),
      ),


      backgroundColor: Colors.grey[300],
    ),);
  }
}
