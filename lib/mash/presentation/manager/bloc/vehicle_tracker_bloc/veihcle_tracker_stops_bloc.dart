import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart';

import '../../../../../core/usecase.dart';

part 'veihcle_tracker_stops_event.dart';
part 'veihcle_tracker_stops_state.dart';
part 'veihcle_tracker_stops_bloc.freezed.dart';

class VehicleTrackerStopsBloc extends Bloc<VeihcleTrackerStopsEvent, VeihcleTrackerStopsState> {
  VehicleTrackerStopsBloc() : super( VeihcleTrackerStopsState.initial()) {
    on<VeihcleTrackerStopsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_GetVehicletrackerStop>(_getVehicleTrackerStops);
    on<_AddPolyLines>(_addPolyLines);

  }

  FutureOr<void> _getVehicleTrackerStops(_GetVehicletrackerStop event, Emitter<VeihcleTrackerStopsState> emit) async {
    emit(state.copyWith(getTrackerStops: ResponseClassify.loading()));
    try{
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await getVehicleTrackerUseCase.call(VehicleTrackerRequest(companyId: loginInfo?.compId??"" ));
      emit(state.copyWith(getTrackerStops: ResponseClassify.completed(response)));
    }catch(e){
      emit(state.copyWith(getTrackerStops: ResponseClassify.error(e)));
    }
  }
  //usecases
  final getVehicleTrackerUseCase = getIt<GetVehicleTrackerStopsUseCase>();

  /// Use case for fetching user information.
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  static VehicleTrackerStopsBloc get(context) => BlocProvider.of(context);

  FutureOr<void> _addPolyLines(_AddPolyLines event, Emitter<VeihcleTrackerStopsState> emit) {
    var polylines = state.polyLines;
    polylines?.addAll(event.polyLine);
    emit(state.copyWith(polyLines:polylines));
  }
}
