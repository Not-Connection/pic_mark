part of '../_index.dart';

class [screenName % pascalcase]Charlie extends StatelessWidget {
  const [screenName % pascalcase]Charlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${_dt.rxCounter.st}')),
        OnReactive(() => Text('${_dt.rxRandom.st}')),
      ],
    );
  }
}
