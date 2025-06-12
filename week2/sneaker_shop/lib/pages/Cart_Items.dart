import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/shoe.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/pages/cart.dart';
class CartItems extends StatefulWidget {

  Shoes Shoe;
  CartItems({super.key,required this.Shoe,});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  void removeItem(){
    Provider.of<Cart>(context,listen: false). delitems(widget.Shoe);}
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
        child: ListTile(
          leading: Image.asset(widget.Shoe.image,width: 80,),
          title: Text(widget.Shoe.name),
          subtitle: Text("\$"+widget.Shoe.price),
          trailing: IconButton(onPressed: removeItem, icon: Icon(Icons.delete),),
         ),
      );
  }
}
