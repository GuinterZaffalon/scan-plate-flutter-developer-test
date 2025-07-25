import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scan_plate/view/components/button_recognize_vehicle.dart';
import 'package:scan_plate/view/components/vehicle_info_area.dart';
import 'package:scan_plate/view_model/plate_result_format.dart';
import 'package:scan_plate/view_model/search_car.dart';

class ResultPage extends StatefulWidget {
  final File file;
  const ResultPage({super.key, required this.file});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late Future<List<PlateResult>> futureResults;

  @override
  void initState() {
    super.initState();
    futureResults = SearchCar.searchCarByPlateRecognizer(widget.file);
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
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: FutureBuilder<List<PlateResult>>(
            future: futureResults,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child: CircularProgressIndicator(
                        color: Color.fromRGBO(53, 88, 52, 1)));
              } else if (snapshot.hasError) {
                return Column(children: [
                  Text("Ocorreu um erro de conexão, tente novamente!",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonRecognizeVehicle(
                      text: "Retornar e tentar novamente",
                      )
                ]);
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Column(children: [
                  Text(
                      "Não foi possível reconhecer o veículo,\ntente novamente!",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonRecognizeVehicle(
                      text: "Retornar e tentar novamente",
                      )
                ]);
              }
              final results = snapshot.data!;
              return ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      VehicleInfoArea(
                          modelCar: results[index].modelMake[0].model,
                          makeCar: results[index].modelMake[0].make,
                          colorCar: results[index].color[0].color),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonRecognizeVehicle(
                          text: "Reconhecer outro veículo",
                          )
                    ],
                  );
                },
              );
            }),
      ),
    );
  }
}
