import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.[screenName % snakecase].data.dart';
part 'b.[screenName % snakecase].ctrl.dart';
part 'c.[screenName % snakecase].view.dart';
part 'widgets/a.[screenName % snakecase].appbar.dart';
part 'widgets/b.[screenName % snakecase].fab.dart';
part 'widgets/c.[screenName % snakecase].charlie.dart';
part 'widgets/d.[screenName % snakecase].delta.dart';
part 'widgets/e.[screenName % snakecase].echo.dart';

[screenName % pascalcase]Data get _dt => Data.[screenName % camelcase].st;
[screenName % pascalcase]Ctrl get _ct => Ctrl.[screenName % camelcase];

