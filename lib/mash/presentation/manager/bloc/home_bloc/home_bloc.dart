import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/add_on_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_entity.dart';
import 'package:mash/mash/domain/use_cases/profile/get_user_details_use_case.dart';

import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../../domain/use_cases/home/get_add_on_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAddOnUsecase getAddOnUsecase;
  final GetUserInfoUseCase getUserInfoUseCase;
  HomeBloc(this.getAddOnUsecase, this.getUserInfoUseCase)
      : super(HomeState.initial()) {
    on<_GetAddOnEvent>(_getAddOn);
  }

  _getAddOn(_GetAddOnEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(addOnResponse: ResponseClassify.loading()));

    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());

      final data = await getAddOnUsecase.call(AddOnRequest(
        compId: userInfo?.compId ?? "",
        categoryId: '1',
        categoryType: '2',
      ));
      emit(state.copyWith(addOnResponse: ResponseClassify.completed(data)));
    } catch (e) {
      prettyPrint(e.toString());
    }
  }
}
