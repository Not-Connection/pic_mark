part of '../_index.dart';

class SampleTigaAppbar extends StatelessWidget {
  const SampleTigaAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
