import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/widget/crm.dart';

class AnoudCrm extends StatefulWidget {
  const AnoudCrm({Key? key}) : super(key: key);

  @override
  State<AnoudCrm> createState() => _AnoudCrmState();
}

class _AnoudCrmState extends State<AnoudCrm> {
  @override
  Widget build(BuildContext context) {
   var width1= MediaQuery.of(context).size.width;
   var height= MediaQuery.of(context).size.height;
   print(width1);
   print(height);
   print(width1 *0.9);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(08.0),


          child: Container(

              width: 100,
              child: Image.asset("images/logo_anoud_crm.png",)),

        ) ,


     actions:[ Container(

       width: 300,
       height: 50,
       child: Card(
         child:  ListTile(
           leading:  const Icon(Icons.search),
           title:  const Center(
             child: TextField(
               decoration:  InputDecoration(
                   hintText: 'Search', border: InputBorder.none),
             ),
           ),
           trailing:  IconButton(icon:  Icon(Icons.cancel), onPressed: () {
             },
           ),
         ),
       ),
     ),]


      ),

    body: Column(
      children:<Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start
          ,
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Card(
              elevation: 0.7,
              color: Colors.grey.shade200,
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  IconButton(onPressed: () => {}, icon: Icon(Icons.contact_page)),
                ],
              ),
              ),
            ),
Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          //  padding: const EdgeInsets.all(10),
            width: width1 *0.94,
            height: 40,
            alignment: Alignment.centerLeft,
            color: Colors.lightBlueAccent.shade100,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Contact"),
            ),
          ),
    ),
  ],)
          ],
        ),
      ],
    ),


    );
  }
}
