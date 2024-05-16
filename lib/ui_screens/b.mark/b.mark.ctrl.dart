part of '_index.dart';

class MarkCtrl {
  init() => logxx.i(MarkCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      _dt.rxPickedFile.st = pickedImage;
    }
  }

  Widget imagePickerDialog() {
    return AlertDialog(
      title: const Text('Pick a source'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Camera'),
            onTap: () {
              nav.back();

              onPickerPressed(ImageSource.camera);
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Gallery'),
            onTap: () {
              nav.back();

              onPickerPressed(ImageSource.gallery);
            },
          ),
        ],
      ),
    );
  }

  onPickerPressed(ImageSource source, {bool isLogo = false}) async {
    await _ct.pickImage(source);
    if (_dt.rxPickedFile.st != null) {
      if (isLogo) {
        _dt.rxLogoWatermark.st = _dt.rxPickedFile.st;
      } else {
        _dt.rxPreImage.st = _dt.rxPickedFile.st;
      }
    }
  }

  Future<void> applyTextWatermark() async {
    final imageBytes = await _dt.rxPreImage.st!.readAsBytes();

    await ImageWatermark.addTextWatermark(
      imgBytes: imageBytes,
      watermarkText: _dt.rxTextWaterMark.text,
      dstX: 20,
      dstY: 30,
    ).then(
      (value) => _dt.rxWatermarkedImage.st = value,
    );
  }

  submitTextWatermark() => _dt.rxForm.submit();

  Future<void> applyImageWatermark() async {
    final imageBytes = await _dt.rxPreImage.st!.readAsBytes();
    final watermarkBytes = await _dt.rxLogoWatermark.st!.readAsBytes();
    final watermarkDecoded = img.decodeImage(watermarkBytes);
    final wtmWidth = watermarkDecoded!.width;
    final wtmHeight = watermarkDecoded.height;

    logx.e('$wtmWidth, $wtmHeight');

    await ImageWatermark.addImageWatermark(
      originalImageBytes: imageBytes, //image bytes
      waterkmarkImageBytes: watermarkBytes, //watermark img bytes
      imgHeight: (wtmHeight / 10).floor(), //watermark img height
      imgWidth: (wtmWidth / 10).floor(), //watermark img width
      dstY: 5, //watermark position Y
      dstX: 5, //watermark position X
    ).then(
      (value) {
        _dt.rxWatermarkedImage.st = value;
      },
    );
  }
}
