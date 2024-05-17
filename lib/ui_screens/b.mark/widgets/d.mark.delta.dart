part of '../_index.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool cropping = false;

  late Rect rect = Rect.fromCenter(
    center: Offset(_dt.rxPreImageW.st / 3, _dt.rxPreImageH.st / 3),
    width: _dt.rxWtmLogoWidth.st,
    height: _dt.rxWtmLogoHeight.st,
  );

  @override
  Widget build(BuildContext context) {
    return TransformableBox(
      key: const ValueKey('Main TransformableBox'),
      rect: rect,
      onChanged: (result, event) {
        setState(() {
          rect = result.rect;
          _dt.rxWtmLogoHeight.st = result.rect.height;
          _dt.rxWtmLogoWidth.st = result.rect.width;
          _dt.rxWtmLogoDx.st = result.rect.topLeft.dx;
          _dt.rxWtmLogoDy.st = result.rect.topLeft.dy;
        });
      },
      contentBuilder: (BuildContext context, Rect rect, Flip flip) {
        return DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: cropping ? Colors.grey : Colors.blue, // Aesthetic change when cropping
              width: cropping ? 0.75 : 2, // Aesthetic change when cropping
            ),
            image: DecorationImage(
              image: FileImage(File(_dt.rxLogoWatermark.st!.path)),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(!cropping ? 0 : 0.5), // Aesthetic change when cropping
                BlendMode.hardLight,
              ),
            ),
          ),
        );
      },
      visibleHandles: {
        if (!cropping) // Returns an empty set when in cropping mode.
          ...HandlePosition.corners,
      },
      enabledHandles: {
        if (!cropping) // Returns an empty set when in cropping mode.
          ...HandlePosition.corners,
      },
      cornerHandleBuilder: (context, handle) => DefaultCornerHandle(
        handle: handle,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
        ),
      ),
    );
  }
}
