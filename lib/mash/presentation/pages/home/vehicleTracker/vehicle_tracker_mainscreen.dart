import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mash/mash/presentation/pages/home/vehicleTracker/widgets/tracker_detail_widget.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/drawer_widget.dart';

class VehicleTrackerMainScreen extends StatelessWidget {
  const VehicleTrackerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.vehicleTracker),
      endDrawer: DrawerWidget(),
      body: const VehicleTrackerBody(),
    );
  }
}

class VehicleTrackerBody extends StatefulWidget {
  const VehicleTrackerBody({super.key});

  @override
  State<VehicleTrackerBody> createState() => _VehicleTrackerBodyState();
}

class _VehicleTrackerBodyState extends State<VehicleTrackerBody> {
  final Completer<GoogleMapController> _mapController = Completer();

  late VehicleTrackerStopsBloc bloc;
  @override
  void initState() {
    bloc = BlocProvider.of<VehicleTrackerStopsBloc>(context);
    bloc.add(const VehicleTrackerStopsEvent.initMap());
    super.initState();
  }

  @override
  void dispose() {
    bloc.cancelBusTracking();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: BlocBuilder<VehicleTrackerStopsBloc, VehicleTrackerStopsState>(
        builder: (context, state) {
          return state.isLoading
              ? state.getTrackerStops == null
                  ? const Center(
                      child: Text(
                          "Can't fetch bus location at the time please try again after some time"),
                    )
                  : state.getBusLiveLocation == null
                      ? const Center(
                          child: Text("Something went wrong"),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        )
              : Stack(
                  children: [
                    GoogleMap(
                      padding: const EdgeInsets.only(bottom: 80),
                      initialCameraPosition: CameraPosition(
                          target: LatLng(
                              state.getTrackerStops?.vehicleDetails?.latitude ??
                                  0,
                              state.getTrackerStops?.vehicleDetails
                                      ?.longitude ??
                                  0),
                          zoom: 14.5),
                      onMapCreated: (GoogleMapController controller) {
                        _mapController.complete(controller);
                      },
                      markers: {
                        ...?state.getTrackerStops?.vehicleStops
                            .map((e) => Marker(
                                markerId: MarkerId(e.stops),
                                position: LatLng(e.latitude, e.longitude)))
                            .toSet(),
                        // Marker(
                        //     markerId: const MarkerId('School Bus'),
                        //     position: LatLng(
                        //         state.getBusLiveLocation?.latitude ?? 0,
                        //         state.getBusLiveLocation?.longitude ?? 0)),
                      },
                      polylines: state.polyLines ?? {},
                    ),
                    Positioned(
                      top: 20,
                      child: SizedBox(
                        height: size.height * 0.1,
                        width: size.width,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: TrackerDetailWidget(
                              detail: '17' ' ' 'Min',
                              descTitle: AppStrings.time,
                            )),
                            Expanded(
                                child: TrackerDetailWidget(
                              detail: '8.0' ' ' 'KM',
                              descTitle: AppStrings.distance,
                            )),
                            Expanded(
                                child: TrackerDetailWidget(
                              detail: '\u24D8',
                              descTitle: AppStrings.info,
                            )),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: size.width,
                        height: SizeConfig.height(60),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppColors.purpleLight.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(12)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.transIncharge,
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Text('+91 - 8075776255',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}
