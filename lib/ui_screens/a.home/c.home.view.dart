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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/splash.png'),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              width: double.infinity,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add watermark to your image',
                      textScaler: const TextScaler.linear(1.5),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    const SizedBoxH(20),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size.fromWidth(150),
                      ),
                      onPressed: () => nav.to(Routes.mark),
                      child: const Text(
                        "Get Started",
                        textScaler: TextScaler.linear(1.2),
                      ),
                    ),
                    // const SizedBoxH(10),
                    // OutlinedButton.icon(
                    //   icon: const Icon(Icons.visibility),
                    //   style: OutlinedButton.styleFrom(
                    //     fixedSize: const Size.fromWidth(150),
                    //   ),
                    //   onPressed: () => nav.to(Routes.seek),
                    //   label: const Text(
                    //     "Seek",
                    //     textScaler: TextScaler.linear(1.2),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
