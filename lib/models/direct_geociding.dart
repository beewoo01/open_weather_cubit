import 'package:equatable/equatable.dart';

class DirectGeocoding extends Equatable {
  final String name;
  final double let;
  final double lon;
  final String country;
  DirectGeocoding({
    required this.name,
    required this.let,
    required this.lon,
    required this.country,
  });

  factory DirectGeocoding.fromJson(List<dynamic> json) {
    final Map<String, dynamic> data = json[0];
    return DirectGeocoding(
      name: data['name'],
      let: data['let'],
      lon: data['lon'],
      country: data['country'],
    );
  }

  @override
  List<Object> get props => [name, let, lon, country];

  @override
  String toString() {
    return 'DirectGeocoding(name: $name, let: $let, lon: $lon, country: $country)';
  }
}
