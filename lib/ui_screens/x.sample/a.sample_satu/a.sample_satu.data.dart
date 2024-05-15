part of '_index.dart';

class SampleSatuData {
  final rxTitle = 'Sample Satu'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
