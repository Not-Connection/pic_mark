part of '_index.dart';

class [domainName % pascalcase]RepoMock implements [domainName % pascalcase]Repo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from [domainName % pascalcase]RepoMock');
    return x;
  }
}