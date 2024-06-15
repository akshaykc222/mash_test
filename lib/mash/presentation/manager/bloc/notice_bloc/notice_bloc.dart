import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/notice_all_request.dart';
import 'package:mash/mash/domain/entities/notice/notice_all_entity.dart';
import 'package:mash/mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart';
import 'package:mash/mash/domain/use_cases/notice/notice_all_usecase.dart';

import '../../../../../di/injector.dart';
import '../../../../data/remote/request/notice_pop_up_request.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';

part 'notice_event.dart';
part 'notice_state.dart';
part 'notice_bloc.freezed.dart';

@injectable
class NoticeBloc extends Bloc<NoticeEvent, NoticeState> {
  final GetNoticeBoardPopUp getNoticeBoardPopUp;
  final GetAllNoticeUseCase getAllNoticeUseCase;
  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  NoticeBloc(this.getNoticeBoardPopUp, this.getAllNoticeUseCase)
      : super(NoticeState.initial()) {
    // on<_GetNoticePopUp>(_getNoticePopUp);
    on<_GetAllNotice>(_getAllNotice);
  }

  // _getNoticePopUp(_GetNoticePopUp event, Emitter<NoticeState> emit) async {
  //   emit(state.copyWith(noticeResponseData: ResponseClassify.loading()));
  //   try {
  //     final userdata = await getUserInfoUseCase.call(NoParams());
  //     final data = await getNoticeBoardPopUp.call(NoticePopUpRequest(
  //         pCompId: userdata?.compId ?? "", noticeId: userdata?.classId ?? ""));
  //     emit(state.copyWith(
  //       noticeResponseData: ResponseClassify.completed(data),
  //     ));
  //   } catch (e) {
  //     emit(state.copyWith(
  //         noticeResponseData: ResponseClassify.error(e.toString())));

  //     prettyPrint(e.toString());
  //   }
  // }

  _getAllNotice(_GetAllNotice event, Emitter<NoticeState> emit) async {
    emit(state.copyWith(noticeResponseData: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getAllNoticeUseCase.call(NoticeAllRequest(
        pCompId: userdata?.compId ?? "",
        // usertype: userdata?.userType ?? "",
        usertype: '2',
        noticeId: event.noticeId ?? '0', offset: '0', pLimit: '5',
      ));
      emit(state.copyWith(
        noticeResponseData: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          noticeResponseData: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }
}
