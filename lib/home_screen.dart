import 'package:flutter/material.dart';
import 'package:to_do/tasks_tab/setting_tab.dart';
import 'package:to_do/tasks_tab/tasks_tab.dart';

import 'add_task_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xffDFECDB),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ToDo",style: TextStyle(
          fontSize: 30,color: Colors.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed:() {
        showModalBottomSheet(context: context,
            isScrollControlled: true,
            builder: (context) {
          return Container(
              padding: EdgeInsets.only(bottom :MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskBottomSheet ());
        });
      },
        backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white,width: 3,
        ),

      ),
        child: Icon(Icons.add,color: Colors.white,size: 30,),

      ),
      bottomNavigationBar:BottomAppBar(
        notchMargin: 8,shape:   CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        height: 60,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value){
            index = value;
            setState(() {});
          },

          backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor:Colors.blue ,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.task),label: "" ),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "" ),
          ],
        ),
      ) ,
      body:tabs[index] ,
    );

  }
 List<Widget>tabs=[TaskTab(),SettingTab()];
}
