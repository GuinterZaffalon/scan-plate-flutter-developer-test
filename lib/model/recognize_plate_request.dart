import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class RecognizePlate {
  static Future<dynamic> recognizePlateRequest(File imageFile) async {
    final url = Uri.parse('https://api.platerecognizer.com/v1/plate-reader/');
    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = '2553da0a2ea05afb4a4f387c34ecb6cc051f0832'
      ..files.add(await http.MultipartFile.fromPath('upload', imageFile.path));

      request.fields['regions'] = 'br';
      request.fields['config'] = '{"detection_mode":"vehicle"}';

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        final data = json.decode(responseBody);
        return data;
      } else {
        return null;
      }
  }
}
