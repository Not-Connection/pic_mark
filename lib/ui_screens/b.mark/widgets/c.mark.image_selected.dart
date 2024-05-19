part of '../_index.dart';

class MarkImageSelected extends ReactiveStatelessWidget {
  const MarkImageSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: const BoxConstraints(
                    minHeight: 200,
                    maxHeight: 400,
                  ),
                  child: Stack(
                    children: [
                      Image.file(
                        File(_dt.rxPreImage.st!.path),
                      ),
                      Positioned(
                        top: 5,
                        left: 5,
                        child: _ct.showPreviewWatermark(),
                      ),
                    ],
                  ),
                ),
                const SizedBoxH(10),
                _dt.rxCurrentIndex.st == 1 ? const MarkImageLogo() : const MarkImageText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MarkImageText extends StatelessWidget {
  const MarkImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return Column(
          children: [
            TextField(
              controller: _dt.rxTextWaterMark.controller,
              focusNode: _dt.rxTextWaterMark.focusNode,
              minLines: 1,
              maxLines: 10,
              onEditingComplete: () => _dt.rxTextWaterMark.focusNode.unfocus(),
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                labelText: 'Text Watermark',
                hintText: 'Enter text for watermark',
                errorText: _dt.rxTextWaterMark.error,
                suffixIcon: OnReactive(
                  () => _dt.rxTextWaterMark.text.isNotEmpty
                      ? IconButton(
                          tooltip: 'Clear',
                          onPressed: () {
                            _dt.rxTextWaterMark.reset();
                          },
                          icon: const Icon(
                            Icons.close,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ),
            const SizedBoxH(10),
            OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => const CircularProgressIndicator(),
                child: ElevatedButton.icon(
                  label: const Text('Apply Watermark'),
                  icon: const Icon(Icons.branding_watermark_outlined),
                  onPressed: () async {
                    await _ct.submitTextWatermark();
                  },
                ),
              ),
            ),
            _dt.rxWatermarkedImage.st == null ? const SizedBox.shrink() : const MarkResult()
            // ElevatedButton(
            //   onPressed: () {
            //     _ct.saveWatermarkedImageToLocal();
            //   },
            //   child: const Text(
            //     "Save Image to Local",
            //   ),
            // ),
          ],
        );
      },
    );
  }
}

class MarkImageLogo extends StatelessWidget {
  const MarkImageLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          ElevatedButton.icon(
            label: const Text('Add Image Logo'),
            icon: const Icon(Icons.add),
            onPressed: () {
              _ct.onPickerPressed(ImageSource.gallery, isLogo: true);
            },
          ),
          _dt.rxLogoWatermark.st == null
              ? const SizedBox.shrink()
              : Column(
                  children: [
                    const SizedBoxH(10),
                    ElevatedButton.icon(
                      label: const Text('Apply Watermark'),
                      icon: const Icon(Icons.branding_watermark_outlined),
                      onPressed: () async {
                        await _ct.applyImageWatermark();
                      },
                    ),
                    _dt.rxWatermarkedImage.st == null ? const SizedBox.shrink() : const MarkResult(),
                  ],
                ),
        ],
      ),
    );
  }
}
