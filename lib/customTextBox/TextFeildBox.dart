import 'package:flutter/material.dart';

class TextFeildBox extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const TextFeildBox({Key? key, this.hintText, this.controller, this.validator })
      : super(key: key);

  @override
  State<TextFeildBox> createState() => _TextFeildBoxState();
}

class _TextFeildBoxState extends State<TextFeildBox> {
  // final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        contentPadding: EdgeInsets.all(16),
        border: OutlineInputBorder(),
        hintText: widget.hintText,

      ),
    );
  }

}
