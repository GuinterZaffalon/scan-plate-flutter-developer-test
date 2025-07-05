import 'package:image_picker/image_picker.dart';

class PickImage{
  static Future<XFile?> pickImageOfGalery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }

  static pickImageOfCamera(){
    
  }
}