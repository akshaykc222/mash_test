import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart';

import '../../../data/remote/models/request/notice_pop_up_request.dart';

part 'notice_event.dart';
part 'notice_state.dart';
part 'notice_bloc.freezed.dart';

@injectable
class NoticeBloc extends Bloc<NoticeEvent, NoticeState> {
  final GetNoticeBoardPopUp getNoticeBoardPopUp;
  NoticeBloc(this.getNoticeBoardPopUp) : super(NoticeState.initial()) {
    on<_GetNoticePopUp>(_getNoticePopUp);
  }

  _getNoticePopUp(_GetNoticePopUp event, Emitter<NoticeState> emit) async {
    try {
      final data = await getNoticeBoardPopUp.call(event.params);
      emit(state.copyWith(noticeResponseData: ResponseClassify.SUCCESS(data)));
    } catch (e) {
      emit(state.copyWith(
          noticeResponseData: ResponseClassify.error(e.toString())));

      prettyPrint(e.toString());
    }
  }
}
