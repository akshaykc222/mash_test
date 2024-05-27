part of 'pdf_download_cubit.dart';

@freezed
class PdfDownloadState with _$PdfDownloadState {
  const factory PdfDownloadState({
    required ResponseClassify<String> pdfDownloadResponse,
    required int pdfDownloadProgressState,
  }) = _PdfDownloadState;
  factory PdfDownloadState.initial() => PdfDownloadState(
        pdfDownloadResponse: ResponseClassify.initial(),
        pdfDownloadProgressState: 0,
      );
}