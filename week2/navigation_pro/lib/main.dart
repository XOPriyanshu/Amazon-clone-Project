import 'package:flutter/material.dart';
import 'package:navigation_pro/pages/firstpage.dart';
import 'package:navigation_pro/pages/profile.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Firstpage(),
      routes: {
       "profile":(context)=>Profile(),
      },
    );
  }
}
