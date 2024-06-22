import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../core/pretty_printer.dart';

part 'pdf_download_state.dart';
part 'pdf_download_cubit.freezed.dart';

class PdfDownloadCubit extends Cubit<PdfDownloadState> {
  PdfDownloadCubit() : super(PdfDownloadState.initial());
  downloadPdf(
      {required String filePath,
      required DoucumentType doucumentType,
      required String document}) async {
    emit(state.copyWith(pdfDownloadResponse: ResponseClassify.loading()));
    final fileUrl = filePath;
    if (fileUrl.isEmpty) {
      prettyPrint('Error: File name is empty');
      return;
    }

    try {
      final dir = await getApplicationDocumentsDirectory();
      prettyPrint('path ---------------------- $fileUrl');
      String path = "${dir.path}mash docs/$document.pdf";

      if (await File(path).exists()) {
        emit(state.copyWith(
            pdfDownloadResponse: ResponseClassify.completed(path)));
      } else {
        var file = await File(path).create(recursive: true);
        final res = await Dio().download(
          fileUrl,
          file.path,
          onReceiveProgress: (count, total) {
            var status = count / total * 100;

            emit(state.copyWith(pdfDownloadProgressState: status.toInt()));
          },
        );
        if (res.statusCode == 200) {
          emit(state.copyWith(
            pdfDownloadProgressState: 0,
            pdfDownloadResponse: ResponseClassify.completed(file.path),
          ));
          prettyPrint(
              'Success: File name is ${state.pdfDownloadResponse.data}');
        }
      }
    } on Exception catch (err, stackTrace) {
      emit(
        state.copyWith(
            pdfDownloadProgressState: 0,
            pdfDownloadResponse:
                ResponseClassify.error('something error found')),
      );
      prettyPrint('Error: $err stacktrace $stackTrace');
    }
  }
}
