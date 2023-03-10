import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: <Widget>[
       Container(
      color: Theme.of(context).primaryColor,
        child:  Padding(
        padding: const EdgeInsets.all(8.0),
    child:  Card(
    child:  ListTile(
    leading:  Icon(Icons.search),
    title:  TextField(

    decoration:  InputDecoration(
    hintText: 'Search', border: InputBorder.none),
    // onChanged: onSearchTextChanged,
    ),
    trailing:  IconButton(icon: new Icon(Icons.cancel), onPressed: () {


    },),),),
    ),),
    ],
    ),
        );

  }
}
