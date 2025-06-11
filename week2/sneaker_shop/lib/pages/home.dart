import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom.dart';
import 'package:sneaker_shop/pages/cart.dart';
import 'package:sneaker_shop/pages/cartpage.dart';
import 'package:sneaker_shop/pages/shop.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected=0;
  void navigation(int index){
    setState(() {
      selected=index;
    });
  }
  final List pages=[
    Shop(),
  Cartpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Nike Shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),) ,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading:Builder(
          builder: (context)=>IconButton(
            icon: Icon(Icons.menu,color: Colors.black,size: 30),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            ) ,
        ),
    ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("lib/images/niken.jpg")),
            Divider(color: Colors.black,thickness: 0),
            SizedBox(height: 20),
            ListTile(
              onTap:(){
                Navigator.pop(context);
                 Navigator.pushNamed(context, "home");
              },
              leading: Padding(padding: EdgeInsets.all(12),
                  child: Icon(Icons.home,color: Colors.white,size: 30,)),
              title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            ),
            SizedBox(height: 5),
            ListTile(
              onTap:(){
                Navigator.pop(context);
                 //Navigator.pushNamed(context, "home");
              },
              leading: Padding(padding: EdgeInsets.all(12),
                  child: Icon(Icons.settings,color: Colors.white,size: 30,)),
              title: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            ),
            SizedBox(height: 440),
            ListTile(
              onTap:(){
                Navigator.pop(context);
                Navigator.pushNamed(context, "intro");
              },
              leading: Padding(padding: EdgeInsets.all(12),
                  child: Icon(Icons.logout_outlined,color: Colors.white,size: 30,)),
              title: Text("LogOut",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            ),
          ],
        ),
      ),
      body: pages[selected],
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar:Bottom(onTabChange: (index)=>navigation(index),) ,
    );
  }
}
