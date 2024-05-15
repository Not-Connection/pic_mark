part of '_index.dart';

class SampleSatuCtrl {
  init() => logxx.i(SampleSatuCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
