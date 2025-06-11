import'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todotile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)?deleteFunction;
  Todotile({
      super.key,
      required this.taskname,
      required this.taskcompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25,top: 25,right: 25),
      child: Slidable(
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(onPressed:deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(60),)
            ]),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  value: taskcompleted,
                  onChanged: onChanged,
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.all(Colors.white),

                ),
              ),
              SizedBox(width:20),
              Text(taskname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.pink[200],
               borderRadius:BorderRadius.circular(60),),
        ),
      ),
    );
  }
}
