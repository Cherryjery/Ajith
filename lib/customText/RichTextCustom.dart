import 'package:flutter/material.dart';

class RichCommonText extends StatefulWidget {
  final String text;
  const RichCommonText({Key? key, required this.text}) : super(key: key);

  @override
  State<RichCommonText> createState() => _RichCommonTextState();
}

class _RichCommonTextState extends State<RichCommonText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: widget.text,
        children: [
          TextSpan(
              text: '*',
              style: TextStyle(
                  color: Colors.red)
          )
          ],
        style: TextStyle(
            color: Colors.black,
            ),));
  }
}
