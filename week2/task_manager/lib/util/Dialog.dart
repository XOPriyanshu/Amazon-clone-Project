import 'package:flutter/material.dart';
import 'package:task_manager/util/button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  Dialogbox({super.key,required this.controller,required this.onCancel,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[200],
      content: Padding(
        padding: EdgeInsets.fromLTRB(10,20,10,0),
        child: Container(
          height: 170,
          width: 300,
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide:BorderSide(color: Colors.black,width: 2,),
                  ),
                hintText: "Add a new task",),
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  SizedBox(width: 20),
                  Buttonp(name: "Add", onPressed: onSave
                   ),
                  SizedBox(width: 60),
                  Buttonp(name: "Cancel", onPressed: onCancel ),

                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
