part of '_index.dart';

class MarkView extends StatelessWidget {
  const MarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: MarkAppbar(),
      ),
      bottomNavigationBar: OnReactive(
        () => _dt.rxPreImage.st == null
            ? const SizedBox.shrink()
            : BottomNavigationBar(
                currentIndex: _dt.rxCurrentIndex.st,
                onTap: (value) {
                  _dt.rxCurrentIndex.st = value;
                  debugPrint(_dt.rxCurrentIndex.st.toString());
                },
                selectedItemColor: Theme.of(context).colorScheme.primary,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: 'Text'),
                  BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Logo'),
                ],
              ),
      ),
      body: Center(
        child: OnReactive(
          () => _dt.rxPreImage.st == null ? const MarkPickButton() : const MarkImageSelected(),
        ),
      ),
    );
  }
}
