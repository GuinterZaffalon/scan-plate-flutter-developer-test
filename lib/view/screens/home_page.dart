import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scan_plate/view/components/button_pick_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Text("Como gostaria de obter as informações \n pela placa?",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ButtonPickImage(text: "Câmera"),
                  Spacer(),
                  ButtonPickImage(text: "Galeria"),
                ],
              )
            ],
          ),
        ));
  }
}
