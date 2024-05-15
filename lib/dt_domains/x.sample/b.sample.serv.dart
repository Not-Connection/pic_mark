part of '_index.dart';

class SampleServ {
  void init() {
    logxx.i(SampleServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(SampleServ, 'rxCounter setState success');
  }
}
