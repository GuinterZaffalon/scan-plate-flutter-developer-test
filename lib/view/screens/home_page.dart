import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scan_plate/view/components/button_pick_image.dart';
import 'package:scan_plate/view/components/button_recognize_vehicle.dart';
import 'package:scan_plate/view_model/pick_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;

  Future<void> _selectPhotoOfGallery() async {
    final pickedFile = await PickImage.pickImageOfGalery();
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _takePhotoOfCamera() async {
    final pickedFile = await PickImage.pickImageOfCamera();
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
              SizedBox(
                height: 12,
              ),
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
                  ButtonPickImage(
                    text: "Câmera",
                    onButtonPresed: _takePhotoOfCamera,
                  ),
                  Spacer(),
                  ButtonPickImage(
                    text: "Galeria",
                    onButtonPresed: _selectPhotoOfGallery,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _image != null
                  ? Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(_image!,
                            width: 300, height: 300, fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonRecognizeVehicle(
                          text: "Reconhecer Veículo", onButtonPresed: () {}),
                      
                    ])
                  : Container()
            ],
          ),
        ));
  }
}
