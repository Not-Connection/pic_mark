import 'dart:math';

import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.sample.prov.dart';
part 'b.sample.serv.dart';
part 'c.sample.repo.dart';
part 'd.sample.repo.mock.dart';

SampleProv get _pv => Prov.sample.st;
SampleServ get _sv => Serv.sample;
SampleRepo get _rp => Repo.sample.st;
