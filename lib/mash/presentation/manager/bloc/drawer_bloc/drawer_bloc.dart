import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/request/news_board_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart';

import '../../../../../core/custom_exception.dart';
import '../../../../../core/pretty_printer.dart';
import '../../../../../core/usecase.dart';
import '../../../../data/remote/request/role_menu_request.dart';
import '../../../../domain/entities/dashboard/role_menu_entity.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../../domain/use_cases/dashboard/get_role_menu_usecase.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';
part 'drawer_bloc.freezed.dart';

@injectable
class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  final GetNewsBoardUseCase getNewsBoardUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetRoleMenuUsecase getRoleMenuUsecase;

  DrawerBloc(this.getNewsBoardUseCase, this.getUserInfoUseCase,
      this.getRoleMenuUsecase)
      : super(DrawerState.initial()) {
    on<DrawerEvent>(_getNewsBoard);
    on<_GetRoleMenuEvent>(_getRoleMenutEvent);
  }

  _getNewsBoard(DrawerEvent event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(newsBoardResponse: ResponseClassify.loading()));
    try {
      final userdata = await _getUserInformation();
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

  Future<void> _getRoleMenutEvent(
      _GetRoleMenuEvent event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(roleMenuResponse: ResponseClassify.loading()));
    try {
      final user = await _getUserInformation();

      final res = await getRoleMenuUsecase.call(RoleMenuRequest(
          compId: user?.compId ?? "",
          userType: user?.userType ?? '',
          userId: user?.usrId ?? "",
          roleId: user?.roleId ?? ''));
      emit(state.copyWith(roleMenuResponse: ResponseClassify.completed(res)));
    } on UnauthorisedException catch (e) {
      emit(state.copyWith(
          roleMenuResponse: ResponseClassify.error("$e Unauthorized")));
    } catch (e) {
      prettyPrint(e.toString());
    }
  }

  _getUserInformation() async {
    return await getUserInfoUseCase.call(NoParams());
  }
}
