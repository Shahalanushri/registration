import 'package:flutter/material.dart';
import 'package:registration/services/noteservices.dart';

class Addnotes extends StatefulWidget {
  const Addnotes({super.key});

  @override
  State<Addnotes> createState() => _AddnotesState();
}

class _AddnotesState extends State<Addnotes> {
bool isLoading=true;
 TextEditingController titleController = TextEditingController();
     TextEditingController discriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          SizedBox(height: 20,),
        TextField(
          controller: titleController,
                 
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 247, 221, 230),
                    prefixIcon: Icon(
                      Icons.person,
                      color: const Color.fromARGB(255, 8, 117, 219),
                    ),
                    hintText: "Title",
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                 TextField(
               controller: discriptionController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 247, 221, 230),
                    prefixIcon: Icon(
                      Icons.person,
                      color: const Color.fromARGB(255, 8, 117, 219),
                    ),
                    hintText: "Description",
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent, fixedSize: Size(400, 40)),
                onPressed: () async {setState((){
                  isLoading=true;
                  });
                  await addnotes(title: titleController.text, discription: discriptionController.text, context: context);
                   setState(() {
                        
                      isLoading=false;
                      });},
                  child:isLoading?CircularProgressIndicator():Text ("submit")
                

                
              ),
              
        ],),
      ),
    );
  }

}