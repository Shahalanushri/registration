import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:registration/services/bottumnavigationscreen.dart';

Future<void> signup(
    {required String username,
    required String email,
    required String password,
    required String confirmpassword,

   required BuildContext context})async {
    try{
     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration Succesful")));
     Navigator.push(context, MaterialPageRoute(builder:(context) => Bottumnavigationscreen()));
     
     }
    catch(e){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(e.toString())));
    }
          
    }

Future<void> login(
    {required String username,
   required String password,
   
   required BuildContext context})async {
    try{
     await FirebaseAuth.instance.signInWithEmailAndPassword(email: username, password: password);
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Succesful")));
     Navigator.push(context, MaterialPageRoute(builder:(context) => Bottumnavigationscreen()));
     }
    catch(e){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(e.toString())));
    }
          
    }