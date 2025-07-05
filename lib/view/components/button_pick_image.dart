import 'package:flutter/material.dart';

class ButtonPickImage extends StatefulWidget {
  final String text;
  const ButtonPickImage({super.key, required this.text});

  @override
  State<ButtonPickImage> createState() => _ButtonPickImage();
}

class _ButtonPickImage extends State<ButtonPickImage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color.fromRGBO(53, 88, 52, 1)
        ),
        padding: WidgetStatePropertyAll(
          const EdgeInsets.fromLTRB(60, 15, 60, 15)
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      child: Text(widget.text, style: TextStyle(color: Colors.white),)
    );
  }
}