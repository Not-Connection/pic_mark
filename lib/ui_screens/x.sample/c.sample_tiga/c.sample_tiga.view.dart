part of '_index.dart';

class SampleTigaView extends StatelessWidget {
  const SampleTigaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SampleTigaAppbar(),
      ),
      floatingActionButton: SampleTigaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SampleTigaCharlie(),
            SampleTigaDelta(),
            SampleTigaEcho(),
          ],
        ),
      ),
    );
  }
}
