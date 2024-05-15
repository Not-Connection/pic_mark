part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;
}

final _sampleProv = RM2.inj(SampleProv());
