part of '_index.dart';

class MarkData {
  final rxTitle = 'Mark'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxPickedFile = RM.inject<XFile?>(() => null);
  final rxPreImage = RM.inject<XFile?>(() => null);
  final rxLogoWatermark = RM.inject<XFile?>(() => null);
  final rxWatermarkedImage = RM.inject<Uint8List?>(() => null);

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.applyTextWatermark();
    },
  );

  final rxCurrentIndex = RM.inject<int>(() => 0);

  final rxTextWaterMark = RM.injectTextEditing(
    validators: [Validate.isNotEmpty],
  );

  final rxIsText = RM.inject<bool>(() => false);

  final rxIsImage = RM.inject<bool>(() => false);

  final rxSelections = RM.inject<List<bool>>(() => [false, false]);
}
