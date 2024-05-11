import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/models/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/use_cases/academic/get_academic_subject_usecase.dart';
import 'package:mash/mash/domain/use_cases/academic/get_class_details_usecase.dart';
import '../../../../core/usecase.dart';
import '../../../domain/use_cases/auth/get_user_info_use_case.dart';

part 'academic_event.dart';
part 'academic_state.dart';
part 'academic_bloc.freezed.dart';

class AcademicBloc extends Bloc<AcademicEvent, AcademicState> {
  final GetClassInforUseCase getClassInforUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetAcademicSubjectUseCase getAcademicSubjectUseCase;

  AcademicBloc({
    required this.getClassInforUseCase,
    required this.getUserInfoUseCase,
    required this.getAcademicSubjectUseCase,
  }) : super(AcademicState.initial()) {
    on<_GetClassDetails>(_getClassDetails);
    on<_GetAcademicSubjects>(_getAcademicSubjects);
  }

  _getClassDetails(
    _GetClassDetails event,
    Emitter<AcademicState> emit,
  ) async {
    emit(state.copyWith(classDetails: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getClassInforUseCase.call(
          AcademicAndCompIdRequest(
            pAcademicId: userdata.academicId,
            pCompID: userdata.compId,
          ),
        );
        emit(state.copyWith(classDetails: ResponseClassify.SUCCESS(data)));
      } else {
        emit(state.copyWith(
            classDetails: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(classDetails: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _getAcademicSubjects(
      _GetAcademicSubjects event, Emitter<AcademicState> emit) async {
    emit(state.copyWith(classDetails: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getAcademicSubjectUseCase.call(
          AcademicSubjectRequests(
            classId: userdata.classId,
            compId: userdata.compId,
          ),
        );
        emit(state.copyWith(classDetails: ResponseClassify.SUCCESS(data)));
      } else {
        emit(state.copyWith(
            classDetails: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(classDetails: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }
}
