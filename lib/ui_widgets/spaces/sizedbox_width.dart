part of '_index.dart';

class SizedBoxW extends StatelessWidget {
  final double width;
  const SizedBoxW(
    this.width, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
