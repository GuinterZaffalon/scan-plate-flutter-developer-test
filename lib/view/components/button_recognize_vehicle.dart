import 'package:flutter/material.dart';

class ButtonRecognizeVehicle extends StatefulWidget {
  final String text;
  final VoidCallback onButtonPresed;
  const ButtonRecognizeVehicle(
      {super.key, required this.text, required this.onButtonPresed});

  @override
  State<ButtonRecognizeVehicle> createState() => _ButtonRecognizeVehicle();
}

class _ButtonRecognizeVehicle extends State<ButtonRecognizeVehicle> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onButtonPresed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(53, 88, 52, 1),
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Text(widget.text, style: TextStyle(color: Colors.white)));
  }
}
