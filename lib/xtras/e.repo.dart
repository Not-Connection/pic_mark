part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());
