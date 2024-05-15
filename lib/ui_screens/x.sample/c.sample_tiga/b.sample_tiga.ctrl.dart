part of '_index.dart';

class SampleTigaCtrl {
  init() => logxx.i(SampleTigaCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
