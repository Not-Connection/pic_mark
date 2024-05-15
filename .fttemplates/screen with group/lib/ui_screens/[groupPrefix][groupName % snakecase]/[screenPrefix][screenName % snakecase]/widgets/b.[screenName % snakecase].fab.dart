part of '../_index.dart';

class [screenName % pascalcase]Fab extends StatelessWidget {
  const [screenName % pascalcase]Fab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        _ct.increaseCounter();
        _ct.updateRandom();
      },
    );
  }
}
