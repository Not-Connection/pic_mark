part of '_index.dart';

class [screenName % pascalcase]Ctrl {
  init() => logxx.i([screenName % pascalcase]Ctrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
