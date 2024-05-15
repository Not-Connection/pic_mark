part of '_index.dart';

class SampleSatuView extends StatelessWidget {
  const SampleSatuView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SampleSatuAppbar(),
      ),
      floatingActionButton: SampleSatuFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SampleSatuCharlie(),
            SampleSatuDelta(),
            SampleSatuEcho(),
          ],
        ),
      ),
    );
  }
}
