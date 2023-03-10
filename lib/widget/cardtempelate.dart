import 'package:flutter/material.dart';

class CardTempelate extends StatefulWidget {
final String Imageurl;
final String Title;
final String Subtitle;
final String Trailing;

  const CardTempelate({Key? key, required this.Imageurl , required this.Title , required this.Subtitle , required this.Trailing}) : super(key: key);

  @override
  State<CardTempelate> createState() => _CardTempelateState();
}

class _CardTempelateState extends State<CardTempelate> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              widget.Imageurl),
          ),
          title: Text(
            widget.Title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.Subtitle,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          trailing: Text(widget.Trailing),
        ),
      ),
    );
  }
}
