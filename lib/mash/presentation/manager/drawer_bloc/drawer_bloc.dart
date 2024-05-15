import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/models/request/news_board_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/pretty_printer.dart';
import '../../../../core/usecase.dart';
import '../../../domain/use_cases/auth/get_user_info_use_case.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';
part 'drawer_bloc.freezed.dart';

@injectable
class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  final GetNewsBoardUseCase getNewsBoardUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  DrawerBloc(this.getNewsBoardUseCase, this.getUserInfoUseCase)
      : super(DrawerState.initial()) {
    on<DrawerEvent>(_getNewsBoard);
    on<_PdfDownload>(_pdfDownload);
  }

  _getNewsBoard(DrawerEvent event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(newsBoardResponse: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      prettyPrint('user details --------------- ${userdata?.academicId}');
      if (userdata != null) {
        final data = await getNewsBoardUseCase.call(
          NewsBoardRequest(
            pCompId: userdata.compId,
            pUserType: userdata.userType,
            pOffset: '0',
            pLimit: '7',
            pSearchKey: '3',
          ),
        );
        prettyPrint('data --------------- $data');
        emit(state.copyWith(
            newsBoardResponse: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            newsBoardResponse: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(
          newsBoardResponse: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _pdfDownload(_PdfDownload event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(pdfDownLoadResponse: ResponseClassify.loading()));
    final fileName = event.fileName;
    if (fileName.isEmpty) {
      prettyPrint('Error: File name is empty');
      return;
    }

    Dio dio = Dio();

    File? file;

    try {
      final dir = await getApplicationDocumentsDirectory();
      file = File('${dir.path}/$fileName');

      if (await file.exists()) {
        emit(state.copyWith(
            pdfDownLoadResponse: ResponseClassify.completed(file.path)));
      } else {
        final res = await dio.download(
          fileName,
          file.path,
          onReceiveProgress: (count, total) {
            var status = count / total * 100;

            emit(state.copyWith(pdfDownloadProgressState: status.toInt()));
          },
        );
        if (res.statusCode == 200) {
          emit(state.copyWith(
            pdfDownloadProgressState: 0,
            pdfDownLoadResponse: ResponseClassify.completed(file.path),
          ));
          prettyPrint('after emit ${state.pdfDownLoadResponse.data}');
        }
      }
    } on Exception catch (err) {
      emit(state.copyWith(
        pdfDownloadProgressState: 0,
        pdfDownLoadResponse: ResponseClassify.error(err.toString()),
      ));
    }
  }
}
