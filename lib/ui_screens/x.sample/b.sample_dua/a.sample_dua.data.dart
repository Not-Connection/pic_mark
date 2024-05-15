part of '_index.dart';

class SampleDuaData {
  final rxTitle = 'Sample Dua'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
