import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleInfoArea extends StatefulWidget {
  final String modelCar;
  final String makeCar;
  final String colorCar;
  const VehicleInfoArea(
      {super.key,
      required this.modelCar,
      required this.makeCar,
      required this.colorCar});

  @override
  State<VehicleInfoArea> createState() => _VehicleInfoArea();
}

class _VehicleInfoArea extends State<VehicleInfoArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text("Informações do veículo:",
            style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18)),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: Text(
            "Modelo:",
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade600,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            widget.modelCar.isNotEmpty ? widget.modelCar : 'Desconhecido',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "Marca:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      widget.makeCar.isNotEmpty
                          ? widget.makeCar
                          : 'Desconhecida',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "Cor:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      widget.colorCar.isNotEmpty
                          ? widget.colorCar
                          : 'Desconhecido',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
