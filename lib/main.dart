import 'package:flutter/material.dart';

import 'app/_index.dart';

void main() async {
  //todo: uncomment line below to init repo.mock files
  // await Mocks.instance.init();

  await inits();

  runApp(const App());
}
