part of '../_index.dart';

class SampleSatuAppbar extends StatelessWidget {
  const SampleSatuAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
