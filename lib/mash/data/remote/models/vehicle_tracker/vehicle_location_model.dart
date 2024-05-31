import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_location_entity.dart';
import 'package:xml/xml.dart' as xml;

class VehicleLocationModel extends VehicleLocationEntity {
  const VehicleLocationModel(
      {required super.status,
      required super.latitude,
      required super.longitude});

  // Factory constructor for creating a new VehicleLocation instance from an XML document.
  factory VehicleLocationModel.fromXml(String xmlString) {
    final document = xml.XmlDocument.parse(xmlString);
    final status = document.findAllElements('status').first.value;
    final latitude =
        double.parse(document.findAllElements('latitude').first.value ?? "");
    final longitude =
        double.parse(document.findAllElements('longitude').first.value ?? "");

    return VehicleLocationModel(
      status: status ?? "",
      latitude: latitude,
      longitude: longitude,
    );
  }
}
