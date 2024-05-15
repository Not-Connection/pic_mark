part of '../_index.dart';

class [screenName % pascalcase]Appbar extends StatelessWidget {
  const [screenName % pascalcase]Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
