import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_manager/util/Todotile.dart';
import 'package:task_manager/util/Dialog.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final controller =TextEditingController();
  final List Todolist=[["breakfast",false],["fresh",false]];


  void savenewtask(){
    setState(() {

      Todolist.add([controller.text,false]);
      controller.clear();

    });
    Navigator.of(context).pop();
  }
  void checkboxchanged(bool? value,int index){
    setState(() {
      Todolist[index][1]=!Todolist[index][1];
    });

  }
  void CreateNewTask(){
    showDialog(
        context: context,
        builder: (contex)=>Dialogbox(
          controller: controller,
          onCancel:(){controller.clear();Navigator.of(context).pop();} ,
        onSave: savenewtask,),);
  }
  void Deletefunction(int index){
    setState(() {
      Todolist.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        elevation:0,
        title: Text("Task Manager",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
      ),
      body: ListView.builder(
        itemCount: Todolist.length,
        itemBuilder: (context,index){
          return Todotile(
              taskname: Todolist[index][0],
              taskcompleted: Todolist[index][1],
              onChanged:(value)=>checkboxchanged(value,index),
              deleteFunction: (context)=>Deletefunction(index));
        },
      ),
      floatingActionButton:FloatingActionButton(
          onPressed:CreateNewTask ,
       child: Icon(Icons.add,color: Colors.black,),

      ),
    );
  }
}
