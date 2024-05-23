import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/teacher_rating_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';
import 'package:mash/mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart';

part 'teacher_event.dart';
part 'teacher_state.dart';
part 'teacher_bloc.freezed.dart';

class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  TeacherBloc() : super( TeacherState.initial()) {
    on<TeacherEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_GetRatings>(_getTeacherRatings);
  }


  FutureOr<void> _getTeacherRatings(_GetRatings event, Emitter<TeacherState> emit) async {
    emit(state.copyWith(getTeacherRating: ResponseClassify.loading()));
    try{
      var response = await getTeacherRatingUseCase.call(event.getRequest);
      emit(state.copyWith(getTeacherRating: ResponseClassify.completed(response)));
    }catch(e){
      emit(state.copyWith(getTeacherRating: ResponseClassify.error(e)));
    }
  }
  //usecases
  final getTeacherRatingUseCase = getIt<GetTeacherRatingUseCase>();
}
