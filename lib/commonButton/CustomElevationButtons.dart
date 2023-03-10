import 'package:flutter/material.dart';

class CustomElevationButton extends StatefulWidget {
  final String ?label;
  final VoidCallback ?onPressed;

  const CustomElevationButton({Key? key, this.label, this.onPressed}) : super(key: key);

  @override
  State<CustomElevationButton> createState() => _CustomElevationButtonState();
}

class _CustomElevationButtonState extends State<CustomElevationButton> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

