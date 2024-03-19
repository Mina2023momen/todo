import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
         borderRadius: BorderRadius.circular(18),

      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Slidable(
          startActionPane: ActionPane(motion: DrawerMotion(),
              extentRatio: .7,
              children: [
                SlidableAction(onPressed: (context){

                },

                  backgroundColor: Colors.red,
                  label: "Delete",
                  icon: Icons.delete,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18)
                  ),
                ),
                SlidableAction(onPressed: (context){

                },
                  backgroundColor: Colors.blue,
                  label: "Edit",
                  icon: Icons.edit,
                ),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
              ),
              Container(
                height: 80,
                width: 4,
                margin: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
               SizedBox(
                 width: 16,
               ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text("Task Title",style: TextStyle(fontSize: 22),),
                  Text("Description",style: TextStyle(fontSize: 16),)
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 2),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                  child: Icon(Icons.done,size:30,color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }
}
