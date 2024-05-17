part of '../_index.dart';

class MarkResult extends StatelessWidget {
  const MarkResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.only(right: 5),
        leading: SizedBox(
          height: 100,
          width: 100,
          child: Image.memory(_dt.rxWatermarkedImage.st!),
        ),
        onTap: () {
          _ct.showImagePreview(
            'Watermarked Image',
            _dt.rxWatermarkedImage.st!,
          );
        },
        title: const Text(
          'Watermarked Image',
          textScaler: TextScaler.linear(0.7),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              tooltip: 'Share Image',
              icon: const Icon(Icons.share),
              onPressed: () {
                _ct.shareFile(context);
              },
            ),
            const SizedBoxW(10),
            // IconButton(
            //   tooltip: 'Download Image',
            //   icon: const Icon(Icons.download),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
