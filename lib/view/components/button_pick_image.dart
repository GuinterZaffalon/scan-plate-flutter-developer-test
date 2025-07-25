import 'package:flutter/material.dart';

class ButtonPickImage extends StatefulWidget {
  final String text;
  final VoidCallback onButtonPresed;
  const ButtonPickImage(
      {super.key, required this.text, required this.onButtonPresed});

  @override
  State<ButtonPickImage> createState() => _ButtonPickImage();
}

class _ButtonPickImage extends State<ButtonPickImage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onButtonPresed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(53, 88, 52, 1),
          padding: const EdgeInsets.fromLTRB(60, 15, 60, 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
