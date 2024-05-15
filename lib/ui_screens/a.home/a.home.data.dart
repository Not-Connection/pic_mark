part of '_index.dart';

class HomeData {
  final rxTitle = 'Home'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
