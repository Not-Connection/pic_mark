part of '_index.dart';

class SampleDuaView extends StatelessWidget {
  const SampleDuaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SampleDuaAppbar(),
      ),
      floatingActionButton: SampleDuaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SampleDuaCharlie(),
            SampleDuaDelta(),
            SampleDuaEcho(),
          ],
        ),
      ),
    );
  }
}
