import 'package:xml/xml.dart' as xml;

class VehicleLocation {
  final String status;
  final double latitude;
  final double longitude;

  VehicleLocation({
    required this.status,
    required this.latitude,
    required this.longitude,
  });

  // Factory constructor for creating a new VehicleLocation instance from an XML document.
  factory VehicleLocation.fromXml(String xmlString) {
    final document = xml.XmlDocument.parse(xmlString);
    final status = document.findAllElements('status').first.text;
    final latitude =
        double.parse(document.findAllElements('latitude').first.text);
    final longitude =
        double.parse(document.findAllElements('longitude').first.text);

    return VehicleLocation(
      status: status,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
