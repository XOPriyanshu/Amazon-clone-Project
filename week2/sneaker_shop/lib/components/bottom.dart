import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Bottom extends StatelessWidget {
  void Function(int)? onTabChange;
  Bottom({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.symmetric(vertical:30),
      child: GNav(
        color: Colors.grey[600],
          activeColor: Colors.black,
          tabActiveBorder: Border.all(color:Colors.white),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 30,
          gap: 8,
          onTabChange: (value)=>onTabChange!(value),
          tabs:[
            GButton(icon: Icons.home,text: "Home",iconSize: 30,),
            GButton(icon: Icons.shopping_cart,text: "Cart",iconSize: 30,),
          ]),
    );
  }
}
