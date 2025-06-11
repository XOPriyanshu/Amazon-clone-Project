import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/shoe.dart';
class ShoesTile extends StatelessWidget {
  void Function()? onTap;
  Shoes shoes;
  ShoesTile({super.key,required this.shoes,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(25),
      height: 200,
      width: 270,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:Colors.white,
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(shoes.image,
          width: 300,
          height: 250,
          fit:BoxFit.contain,

          ),

          Text(shoes.description,style: TextStyle(color: Colors.black,fontSize: 18),textAlign:TextAlign.center,),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shoes.name,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1.2),),
                  Text("\$" +shoes.price,style: TextStyle(color: Colors.grey[700],fontSize:15 ),),
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                 padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(12) ,bottomRight: Radius.circular(12)),
                    color: Colors.black,
                  ),
                  child: Icon(Icons.add,color: Colors.white,),

                ),
              ),

            ],),
          ),
        ],
      ) ,
    );
  }
}
