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

  Future<void> shareFile(BuildContext context) async {
    final directory = await getApplicationDocumentsDirectory();
    final uid = const Uuid().v1();

    final file = File('${directory.path}/$uid.jpg');
    await file.writeAsBytes(_dt.rxWatermarkedImage.st!).then(
          (value) => logx.w(
            value.path.toString(),
          ),
        );
    final result = await Share.shareXFiles(
      [XFile(file.path)],
      text: 'Check this out',
    );

    if (result.status == ShareResultStatus.success) {
      // ignore: use_build_context_synchronously
      _showSnackBar(context, 'Thank you for sharing the picture!');
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }

  void showImagePreview(String name, Uint8List imageBytes) {
    nav.toDialog(
      CupertinoAlertDialog(
        title: Text(
          name,
        ),
        content: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 300,
            child: Image.memory(
              imageBytes,
            ),
          ),
        ),
      ),
    );
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
      imgHeight: (wtmHeight / 3).floor(), //watermark img height
      imgWidth: (wtmWidth / 3).floor(), //watermark img width
      dstY: 5, //watermark position Y
      dstX: 5, //watermark position X
    ).then(
      (value) {
        _dt.rxWatermarkedImage.st = value;
      },
    );
  }

  Future<void> saveWatermarkedImageToLocal() async {
    final directory = await getApplicationDocumentsDirectory();
    final uid = const Uuid().v1();
    final file = File('${directory.path}/$uid.jpg');
    await file.writeAsBytes(_dt.rxWatermarkedImage.st!).then(
          (value) => logx.w(
            value.path.toString(),
          ),
        );
  }

  Widget showPreviewWatermark() {
    if (_dt.rxLogoWatermark.st != null || _dt.rxTextWaterMark.text.isNotEmpty) {
      if (_dt.rxLogoWatermark.st != null) {
        return SizedBox(
          width: 80,
          child: Image.file(
            File(_dt.rxLogoWatermark.st!.path),
          ),
        );
      }
      if (_dt.rxTextWaterMark.text.isNotEmpty) {
        return Text(
          _dt.rxTextWaterMark.text,
          style: const TextStyle(color: Colors.black),
        );
      }
      return const SizedBox.shrink();
    }
    return const SizedBox.shrink();
  }
}
