part of '../_index.dart';

class MarkPickButton extends StatelessWidget {
  const MarkPickButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: Image.asset('assets/images/gallery.png'),
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add Image'),
          onPressed: () {
            nav.toDialog(
              _ct.imagePickerDialog(),
            );
          },
        ),
        const SizedBoxH(20),
        const Text('It\'s empty! Add an image you want to watermark.'),
      ],
    );
  }
}
