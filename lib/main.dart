import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:registration/addnotes.dart';
import 'package:registration/firebase_options.dart';
import 'package:registration/login.dart';
import 'package:registration/notescreen.dart';
import 'package:registration/services/noteservices.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),));
}

