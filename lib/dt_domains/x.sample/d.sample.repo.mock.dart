part of '_index.dart';

class SampleRepoMock implements SampleRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from SampleRepoMock');
    return x;
  }
}
