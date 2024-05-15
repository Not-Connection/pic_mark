part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      // floatingActionButton: HomeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // HomeCharlie(),
            // HomeDelta(),
            // HomeEcho(),
            ElevatedButton(
              onPressed: () => nav.to(Routes.sampleSatu),
              child: const Text(
                "to sample_satu",
              ),
            ),
            ElevatedButton(
              onPressed: () => nav.to(Routes.sampleDua),
              child: const Text(
                "to sample_dua",
              ),
            ),
            ElevatedButton(
              onPressed: () => nav.to(Routes.sampleTiga),
              child: const Text(
                "to sample_tiga",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
