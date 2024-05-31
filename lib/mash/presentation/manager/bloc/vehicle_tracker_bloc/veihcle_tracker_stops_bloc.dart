import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/student_routes_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

import '../../../../domain/entities/vehicle_tracker/vehicle_location_entity.dart';
import '../../../../domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart';

part 'veihcle_tracker_stops_bloc.freezed.dart';
part 'veihcle_tracker_stops_event.dart';
part 'veihcle_tracker_stops_state.dart';

@lazySingleton
@injectable
class VehicleTrackerStopsBloc
    extends Bloc<VehicleTrackerStopsEvent, VehicleTrackerStopsState> {
  VehicleTrackerStopsBloc() : super(VehicleTrackerStopsState.initial()) {
    on<VehicleTrackerStopsEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<_InitMap>(_initMap);
    on<_AddPolyLines>(_addPolyLines);
    on<_GetBusLocation>(_getBusLocation);
  }

  //usecases
  final getVehicleTrackerUseCase = getIt<GetVehicleTrackerStopsUseCase>();

  /// Use case for fetching user information.
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final GetVehicleCurrentLocation getVehicleCurrentLocation =
      getIt<GetVehicleCurrentLocation>();
  final GetVehicleTrackerStopsUseCase getVehicleTrackerStopsUseCase =
      getIt<GetVehicleTrackerStopsUseCase>();
  final loginInfoUseCase = getIt<GetUserInfoUseCase>();
  //bloc instance
  static VehicleTrackerStopsBloc get(context) => BlocProvider.of(context);

  _addPolyLines(_AddPolyLines event, Emitter<VehicleTrackerStopsState> emit) {
    var polylines = state.polyLines;
    polylines?.addAll(event.polyLine);
    emit(state.copyWith(polyLines: polylines));
  }

  ///initilizing map here by calling 2 api
  ///one for getting student routes and
  ///one for getting live bus location

  _initMap(_InitMap event, Emitter<VehicleTrackerStopsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var loginData = await loginInfoUseCase.call(NoParams());
      final studentRoutes = await getVehicleTrackerStopsUseCase
          .call(VehicleTrackerRequest(companyId: "200002"));

      List<LatLng> locPoints = studentRoutes.vehicleStops
          .map((e) => LatLng(e.latitude, e.longitude))
          .toList();
      List<LatLng> polyLinePointList = [];
      List<Polyline> mapPolyLines = [];
      // List<Polyline> polyline = await drawPolyLines(locPoints);
      PolylinePoints polylinePoints = PolylinePoints();
      try {
        for (int i = 0; i <= locPoints.length; i++) {
          if (i < locPoints.length) {
            PolylineResult result =
                await polylinePoints.getRouteBetweenCoordinates(
              AppConstants.googleMapKey,
              PointLatLng(locPoints[i].latitude, locPoints[i].longitude),
              PointLatLng(
                  locPoints[i + 1].latitude, locPoints[i + 1].longitude),
            );
            // print(result.points.length);
            if (result.points.isNotEmpty) {
              for (var element in result.points) {
                polyLinePointList
                    .add(LatLng(element.latitude, element.longitude));
              }
            }
            mapPolyLines.add(Polyline(
                polylineId: PolylineId(DateTime.now().toString()),
                points: polyLinePointList));
          }
        }
      } catch (e) {}

      emit(state.copyWith(
          polyLines: mapPolyLines.toSet(),
          isLoading: false,
          getTrackerStops: studentRoutes));
      // if (studentRoutes.isNotEmpty) {}
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(stackTrace);
      }
      emit(state.copyWith(isLoading: false));
    }
  }

  Timer? _debounce;
  final Duration _debounceDuration = const Duration(seconds: 5);

  cancelBusTracking() {
    _debounce?.cancel();
  }

  _getBusLocation(
      _GetBusLocation event, Emitter<VehicleTrackerStopsState> emit) async {
    if (state.getTrackerStops == null) {
      // add(const VehicleTrackerStopsEvent.initMap());
    } else {
      try {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(_debounceDuration, () async {
          prettyPrint("DEBOUNCE ON ACTIVE STATE");
          final loc = await getVehicleCurrentLocation
              .call(state.getTrackerStops?.vehicleDetails?.regNumber ?? "");
          emit(state.copyWith(getBusLiveLocation: loc));
        });
      } catch (e, stackTrace) {
        if (kDebugMode) {
          print(stackTrace);
        }
      }
    }
  }
}