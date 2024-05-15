part of '_index.dart';

class [domainName % pascalcase]Repo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from [domainName % pascalcase]Repo');
    return x;
  }
}