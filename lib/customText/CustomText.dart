import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text;
  const CustomText({Key? key, required this.text}) : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        height: 20,
        child: Text(widget.text,style: const TextStyle(fontFamily: 'Roboto',)),
    );
  }
}
