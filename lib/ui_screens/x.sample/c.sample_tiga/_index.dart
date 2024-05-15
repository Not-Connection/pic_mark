import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.sample_tiga.data.dart';
part 'b.sample_tiga.ctrl.dart';
part 'c.sample_tiga.view.dart';
part 'widgets/a.sample_tiga.appbar.dart';
part 'widgets/b.sample_tiga.fab.dart';
part 'widgets/c.sample_tiga.charlie.dart';
part 'widgets/d.sample_tiga.delta.dart';
part 'widgets/e.sample_tiga.echo.dart';

SampleTigaData get _dt => Data.sampleTiga.st;
SampleTigaCtrl get _ct => Ctrl.sampleTiga;
