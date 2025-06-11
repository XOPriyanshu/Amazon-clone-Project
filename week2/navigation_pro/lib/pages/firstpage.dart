import 'package:flutter/material.dart';
import 'package:navigation_pro/pages/home.dart';
import 'package:navigation_pro/pages/search.dart';
import 'package:navigation_pro/pages/setting.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int index=0;

  void update(int num){
    setState(() {
      index=num;
    });

  }
  final List pages=[
    Home(),
    Search(),
    Setting(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Dashbord",
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w800,
        ),),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        leading: Builder(
            builder:(context)=>IconButton(
                onPressed:(){
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                    Icons.person_2,
                size: 35,
                color: Colors.white,)) ),
      ),
      backgroundColor: Colors.purple[200],
      drawer: Drawer(
        backgroundColor: Colors.purple[100],
        child: Padding(
            padding:EdgeInsets.fromLTRB(30, 120, 20,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 130, // Larger than CircleAvatar
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white, // Or any background color
                        shape: BoxShape.circle,),),
                    // CircleAvatar(
                    //   backgroundColor: Colors.purple,
                    //   radius: 70,
                    // ),
                    CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.png"),
                    radius: 60,
                  ),
        ],
                ),
              ),
              SizedBox(height: 70),
              Text("Name:",style: TextStyle(fontSize:22,fontWeight: FontWeight.bold ),),
              Text("Priyanshu",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.deepPurple ),),
              SizedBox(height: 30),
              Text("College:",style: TextStyle(fontSize:22,fontWeight: FontWeight.bold ),),
              Text("IIT BOMBAY",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.deepPurple ),),
              SizedBox(height: 40),
              ElevatedButton(
                  onPressed:(){
                    Navigator.pop(context);
                    Navigator.pushNamed(context,"profile" );
                  },
                  child: Text("see more"))
            ],
          ),

        ),),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: update,
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: "HOME",
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "SEARCH",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,),
              label: "SETTING",
          )
        ],
       selectedIconTheme: IconThemeData(color: Colors.black,size: 35),
       unselectedIconTheme: IconThemeData(color: Colors.grey[900],size:20),
       selectedLabelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold),
        unselectedLabelStyle:TextStyle(fontSize:15 ) ,

      ),
    );
  }
}
