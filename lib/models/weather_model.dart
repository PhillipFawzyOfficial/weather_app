class WeatherModel {
  final String cityName;
  final String time;
  final String? image;
  final String temp;
  final String maxTemp;
  final String minTemp;
  final String weatherConsition;

  WeatherModel(
      {required this.cityName,
      required this.time,
      this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherConsition});
}
