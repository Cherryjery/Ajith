import 'package:flutter/material.dart';

class CrmTemplate extends StatefulWidget {
  const CrmTemplate({Key? key}) : super(key: key);

  @override
  State<CrmTemplate> createState() => _CrmTemplateState();
}

class _CrmTemplateState extends State<CrmTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(08.0),
          child: Container(
              width: 100,
              child: Image.asset("images/logo_anoud_crm.png",)),
        ) ,
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              IconButton(onPressed: () => {}, icon: Icon(Icons.contact_page)),
            ],
          ),
        ),
      ),


    );
  }
}

