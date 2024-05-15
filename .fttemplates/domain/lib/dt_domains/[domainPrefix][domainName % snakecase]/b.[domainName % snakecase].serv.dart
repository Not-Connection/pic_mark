part of '_index.dart';

class [domainName % pascalcase]Serv {
  void init() {
    logxx.i([domainName % pascalcase]Serv, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i([domainName % pascalcase]Serv, 'rxCounter setState success');
  }
}