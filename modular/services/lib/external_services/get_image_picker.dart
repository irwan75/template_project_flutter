import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:data/const/quality_image.dart';

class PickImage extends ImagePicker {
  PickImage._privateConstructor();

  static final PickImage _instance = PickImage._privateConstructor();

  static PickImage get getInstance => _instance;

  Future<File> imgFromCamera() async {
    XFile? image = await pickImage(
        source: ImageSource.camera,
        imageQuality: QualityImage.qualityImageFivety);

    return File(image!.path);
  }

  Future<File> imgFromGallery() async {
    XFile? image = await pickImage(
        source: ImageSource.gallery,
        imageQuality: QualityImage.qualityImageFivety);

    return File(image!.path);
  }
}
