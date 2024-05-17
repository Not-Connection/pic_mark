import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';

import 'package:image_picker/image_picker.dart';
import 'package:image_watermark/image_watermark.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:image/image.dart' as img;
import 'package:uuid/uuid.dart';

import '../../app/_index.dart';
import '../../ui_widgets/_index.dart';
import '../../xtras/_index.dart';

part 'a.mark.data.dart';
part 'b.mark.ctrl.dart';
part 'c.mark.view.dart';
part 'widgets/a.mark.appbar.dart';
part 'widgets/b.mark.pick_button.dart';
part 'widgets/c.mark.image_selected.dart';
part 'widgets/d.mark.delta.dart';
part 'widgets/e.mark.echo.dart';

MarkData get _dt => Data.mark.st;
MarkCtrl get _ct => Ctrl.mark;
