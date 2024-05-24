import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/pages/home/vehicleTracker/widgets/tracker_detail_widget.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../manager/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart';
import '../../../utils/app_colors.dart';

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

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  static const LatLng sourceLocation = LatLng(10.3997, 76.1160);
  static const LatLng interMediateLocation = LatLng(10.3960, 76.1032);
  static const LatLng destinationLocation = LatLng(10.3987, 76.1030);

  void getPolyLines() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        AppConstants.ApiKey,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(
            destinationLocation.latitude, destinationLocation.longitude));

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
    }
  }

  Future getCurrentLocation() async {
    Location location = Location();

    await location.getLocation().then((location) {
      currentLocation = location;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
    getPolyLines();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: BlocBuilder<VehicleTrackerStopsBloc, VeihcleTrackerStopsState>(
        builder: (context, state) {
          return Stack(
            children: [
              GoogleMap(
                padding: EdgeInsets.only(bottom: 80),
                initialCameraPosition:
                const CameraPosition(target: sourceLocation, zoom: 14.5),
                onMapCreated: (GoogleMapController controller) {
                  _mapController.complete(controller);
                },
                markers: {
                  const Marker(
                      markerId: MarkerId('source'), position: sourceLocation),
                  const Marker(
                      markerId: MarkerId('intermediate'),
                      position: interMediateLocation),
                  const Marker(
                      markerId: MarkerId('destination'),
                      position: destinationLocation),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
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
