import 'package:flutter/material.dart';
import 'package:registration/notescreen.dart';
import 'package:registration/profile.dart';

class Bottumnavigationscreen extends StatefulWidget {
  const Bottumnavigationscreen({super.key});

  @override
  State<Bottumnavigationscreen> createState() => _BottumnavigationscreenState();
}

class _BottumnavigationscreenState extends State<Bottumnavigationscreen> {
  List pages =[Notescreen(),Sample()];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
      onTap: (value) {
        setState(() {
          selectedIndex=value;
        });
      },
      items:[
      BottomNavigationBarItem(icon: Icon(Icons.note),label:"note"),
      BottomNavigationBarItem(icon: Icon(Icons.note),label:"note")

    ]));
  }
}