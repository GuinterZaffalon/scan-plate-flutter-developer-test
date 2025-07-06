import 'dart:io';
import 'package:scan_plate/model/recognize_plate_request.dart';
import 'package:scan_plate/view_model/plate_result_format.dart';

class SearchCar {
  static Future<List<PlateResult>> searchCarByPlateRecognizer(File imageFile) async {
    final data = await RecognizePlate.recognizePlateRequest(imageFile);
    if (data == null || data['results'] == null) {
      return [];
    }
    final List results = data['results'];
    final formattedResult = results.map((e) => PlateResult.fromJson(e)).toList();
    return formattedResult;
  }
}