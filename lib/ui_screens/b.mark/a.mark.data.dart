part of '_index.dart';

class MarkData {
  final rxTitle = 'Mark'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxPickedFile = RM.inject<XFile?>(() => null);
  final rxPreImage = RM.inject<XFile?>(() => null);
  final rxLogoWatermark = RM.inject<XFile?>(() => null);
  final rxWatermarkedImage = RM.inject<Uint8List?>(() => null);

  final rxPreImageW = RM.inject(() => 0);
  final rxPreImageH = RM.inject(() => 0);

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.applyTextWatermark();
    },
  );

  final rxWtmLogoHeight = RM.inject<double>(() => 0.0);
  final rxWtmLogoWidth = RM.inject<double>(() => 0.0);
  final rxWtmLogoDx = RM.inject<double>(() => 0.0);
  final rxWtmLogoDy = RM.inject<double>(() => 0.0);

  final rxCurrentIndex = RM.inject<int>(() => 0);

  final rxTextWaterMark = RM.injectTextEditing(
    validators: [Validate.isNotEmpty],
  );

  final rxTextHeight = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );

  final rxTextWidth = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );

  final rxTextDx = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );

  final rxTextDy = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );

  final rxIsText = RM.inject<bool>(() => false);

  final rxIsImage = RM.inject<bool>(() => false);

  final rxSelections = RM.inject<List<bool>>(() => [false, false]);
}
