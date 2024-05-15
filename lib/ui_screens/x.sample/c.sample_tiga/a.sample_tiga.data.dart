part of '_index.dart';

class SampleTigaData {
  final rxTitle = 'Sample Tiga'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
