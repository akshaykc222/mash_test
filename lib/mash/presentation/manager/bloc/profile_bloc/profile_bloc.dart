import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/get_user_details_request.dart';
import 'package:mash/mash/data/remote/request/update_profile_request.dart';
import 'package:mash/mash/domain/entities/profile/student_detail_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/profile/get_siblings_use_case.dart';
import 'package:mash/mash/domain/use_cases/profile/update_profile_use_case.dart';

import '../../../../domain/entities/profile/student_entity.dart';
import '../../../../domain/use_cases/profile/get_user_details_use_case.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<_GetSiblings>(_getSiblings);
    on<_SelectSibling>(_selectSibling);
    on<_GetUserDetails>(_getUserDetail);
  }
  _getUserDetail(_GetUserDetails event, emit) async {
    emit(state.copyWith(getUserDetail: ResponseClassify.loading()));
    try {
      emit(state.copyWith(
          getUserDetail: ResponseClassify.completed(
              await getUserDetailUseCase.call(event.request))));
    } catch (e, str) {
      prettyPrint('error $e stack $str');
      emit(state.copyWith(getUserDetail: ResponseClassify.error(e)));
    }
  }

  _selectSibling(_SelectSibling event, emit) async {
    var getLoginDetails = await getLoginInfoUseCase.call(NoParams());
    add(ProfileEvent.getUserDetails(
        request: GetUserDetailsRequest(
            userId: event.student.userId,
            compId: getLoginDetails?.compId ?? "",
            academicId: getLoginDetails?.academicId ?? "",
            userType: "2")));
    emit(state.copyWith(selectedSibling: event.student));
  }

  _getSiblings(_GetSiblings event, emit) async {
    emit(state.copyWith(getSiblings: ResponseClassify.loading()));

    try {
      var loginData = await getLoginInfoUseCase.call(NoParams());
      prettyPrint('login data ${loginData?.studentName}');
      var getSiblings = await getSiblingsUseCase.call(loginData?.compId ?? "");
      if (getSiblings.isNotEmpty) {
        add(ProfileEvent.selectSibling(student: getSiblings.first));
      }

      emit(
          state.copyWith(getSiblings: ResponseClassify.completed(getSiblings)));
    } catch (e) {
      emit(state.copyWith(getSiblings: ResponseClassify.error(e)));
      // handleError(event.context, error, (){GRo});
    }
  }

  ///use case

  final getSiblingsUseCase = getIt<GetSiblingsUseCase>();
  final updateProfileUseCase = getIt<UpdateProfileUseCase>();
  final getLoginInfoUseCase = getIt<GetUserInfoUseCase>();
  final getUserDetailUseCase = getIt<GetUserDetailsUseCase>();

  //instance
  static ProfileBloc get(context) => BlocProvider.of(context);
}
