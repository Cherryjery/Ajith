import 'package:financeworkflow/customText/CustomText.dart';
import 'package:financeworkflow/customTextBox/TextFeildBox.dart';
import 'package:flutter/material.dart';

class TextFieldTemplate extends StatefulWidget {
  final String text;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const TextFieldTemplate(
      {Key? key,
      required this.text,
      this.hintText,
      this.controller,
      this.validator})
      : super(key: key);

  @override
  State<TextFieldTemplate> createState() => _TextFieldTemplateState();
}

class _TextFieldTemplateState extends State<TextFieldTemplate> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: widget.text),
          Container(
            width:400,
            //height: 40,
            // MediaQuery.of(context).size.width *
            //     0.30, //1440=1

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
