part of '_index.dart';

class SampleDuaCtrl {
  init() => logxx.i(SampleDuaCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
