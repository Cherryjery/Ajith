import 'package:flutter/material.dart';
import 'package:whatsapp/view/anoud_crm%20.dart';
import 'package:whatsapp/view/search.dart';
import 'package:whatsapp/view/whatapp.dart';
import 'package:whatsapp/widget/crm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.green,
      ),
      home: AnoudCrm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
