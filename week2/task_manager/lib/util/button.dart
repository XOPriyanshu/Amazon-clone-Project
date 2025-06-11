import 'package:flutter/material.dart';
class Buttonp extends StatelessWidget {
 final String name;
 VoidCallback onPressed;
 Buttonp({super.key,required this.name,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onPressed,
    child: Text(name),);
  }
}
