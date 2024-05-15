part of '_index.dart';

class SampleRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from SampleRepo');
    return x;
  }
}
