import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.sample_dua.data.dart';
part 'b.sample_dua.ctrl.dart';
part 'c.sample_dua.view.dart';
part 'widgets/a.sample_dua.appbar.dart';
part 'widgets/b.sample_dua.fab.dart';
part 'widgets/c.sample_dua.charlie.dart';
part 'widgets/d.sample_dua.delta.dart';
part 'widgets/e.sample_dua.echo.dart';

SampleDuaData get _dt => Data.sampleDua.st;
SampleDuaCtrl get _ct => Ctrl.sampleDua;
