import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
   AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
var forKey = GlobalKey<FormState>();
var selectedDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key:forKey ,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16,),
            Text("Add New Task",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            TextFormField(
              validator: (value){
            if (value == null || value.isEmpty) {
              return "please enter task title";
            }
             return null;
              },
              decoration: InputDecoration(
                label: Text ("Title"),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12),

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),

                ),
              ),
            ),
            SizedBox(height: 16,),
            TextFormField(
              validator: (value){
                if (value == null || value.isEmpty) {
                  return "please enter task description";
                }
                return null;
              },

              decoration: InputDecoration(
                label: Text ("Description"),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12),

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),

                ),
              ),
            ),
            SizedBox(height: 16,),

            Container(
                alignment: Alignment.centerLeft,
                child: Text("select Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),

                )

            ),
            SizedBox(height: 16,),
           InkWell(
             onTap: (){

               selectDate(context);
             },

          child:  Text("${selectedDate.toString().substring(0,10)}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
           ),

             SizedBox(height: 16,),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed:   (){
                if (forKey.currentState!.validate()) {
           print ("x");
    }
    },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),

                  child: Text ("Add Task",style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),)),
            )
          ],
        ),
      ),
    );

  }

   selectDate(BuildContext context)async {
    DateTime? chosenDate =await  showDatePicker(context: context,
         initialDate: selectedDate,
         firstDate: DateTime.now(),

         lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate != null){
      selectedDate =chosenDate;
      setState(() {

      });
    }
   }
}
