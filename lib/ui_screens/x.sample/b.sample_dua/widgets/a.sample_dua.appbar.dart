part of '../_index.dart';

class SampleDuaAppbar extends StatelessWidget {
  const SampleDuaAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
