import 'package:flutter/material.dart';

class ButtonRecognizeVehicle extends StatefulWidget {
  final String text;
  const ButtonRecognizeVehicle(
      {super.key, required this.text});

  @override
  State<ButtonRecognizeVehicle> createState() => _ButtonRecognizeVehicle();
}

class _ButtonRecognizeVehicle extends State<ButtonRecognizeVehicle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => Navigator.pop(context),
        style: TextButton.styleFrom(
          backgroundColor: Color.fromRGBO(53, 88, 52, 1),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.arrow_back, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              widget.text,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
