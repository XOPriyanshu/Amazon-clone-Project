import 'package:flutter/material.dart';
class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20,20, 20, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            //logo
            Center(child: Image.asset("lib/images/nike s.png",height:400,scale:0.8,)),
            SizedBox(height: 0),
            //title
            Text("Just Do It",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1)),
            SizedBox(height: 10),
            //sub title
            Text("Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(fontSize: 16,color: Colors.grey,letterSpacing: 0.8),
              textAlign:TextAlign.center ,),
            //start button
            SizedBox(height: 50),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "home");
              },
              child: Container(
                padding: EdgeInsets.only(top: 18),
                height: 70,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Text(
                  "Shop Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:20, ),),
              ),
            ),
          ],),
      ),
    );
  }
}
