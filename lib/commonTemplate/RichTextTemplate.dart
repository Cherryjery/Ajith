import 'package:flutter/material.dart';


import '../customText/RichTextCustom.dart';
import '../customTextBox/TextFeildBox.dart';

class RichTextTemplate extends StatefulWidget {
  final String text;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const RichTextTemplate({Key? key, required this.text,
    this.hintText, this.controller, this.validator}) : super(key: key);

  @override
  State<RichTextTemplate> createState() => _RichTextTemplateState();
}

class _RichTextTemplateState extends State<RichTextTemplate> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichCommonText(text: widget.text),
          Container(
            width:400,
           // height: 300,
            height: MediaQuery.of(context).size.height *
                0.036,
            child: TextFeildBox(
              validator: widget.validator,
              controller: widget.controller,
              hintText: widget.hintText,
            ),
          )
        ],
      ),
    );
  }
}
