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
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  width: 400,
                  child: Image.file(
                    File(_dt.rxPreImage.st!.path),
                  ),
                ),
                const SizedBoxH(10),
                _dt.rxCurrentIndex.st == 1
                    ? Column(
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
                                    SizedBox(
                                      width: 100,
                                      child: Image.file(
                                        File(_dt.rxLogoWatermark.st!.path),
                                      ),
                                    ),
                                    const SizedBoxH(10),
                                    ElevatedButton.icon(
                                      label: const Text('Apply Watermark'),
                                      icon: const Icon(Icons.branding_watermark_outlined),
                                      onPressed: () async {
                                        await _ct.applyImageWatermark();
                                      },
                                    ),
                                    _dt.rxWatermarkedImage.st == null
                                        ? const SizedBox.shrink()
                                        : SizedBox(
                                            width: 400,
                                            child: Image.memory(_dt.rxWatermarkedImage.st!),
                                          ),
                                  ],
                                ),
                        ],
                      )
                    : OnFormBuilder(
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
                              _dt.rxWatermarkedImage.st == null
                                  ? const SizedBox.shrink()
                                  : SizedBox(
                                      width: 400,
                                      child: Image.memory(_dt.rxWatermarkedImage.st!),
                                    ),
                            ],
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
