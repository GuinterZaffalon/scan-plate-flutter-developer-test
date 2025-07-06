import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final File file;
  const ResultPage({super.key, required this.file});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Plate Recoginer",
          style: GoogleFonts.righteous(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(20, 40, 29, 1),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
