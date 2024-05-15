part of '_index.dart';

class [screenName % pascalcase]View extends StatelessWidget {
  const [screenName % pascalcase]View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: [screenName % pascalcase]Appbar(),
      ),
      floatingActionButton: [screenName % pascalcase]Fab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            [screenName % pascalcase]Charlie(),
            [screenName % pascalcase]Delta(),
            [screenName % pascalcase]Echo(),
          ],
        ),
      ),
    );
  }
}
