import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.sample_satu.data.dart';
part 'b.sample_satu.ctrl.dart';
part 'c.sample_satu.view.dart';
part 'widgets/a.sample_satu.appbar.dart';
part 'widgets/b.sample_satu.fab.dart';
part 'widgets/c.sample_satu.charlie.dart';
part 'widgets/d.sample_satu.delta.dart';
part 'widgets/e.sample_satu.echo.dart';

SampleSatuData get _dt => Data.sampleSatu.st;
SampleSatuCtrl get _ct => Ctrl.sampleSatu;
