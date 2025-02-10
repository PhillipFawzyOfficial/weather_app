class WeatherModel {
  final String cityName;
  final String time;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherConsition;

  WeatherModel(
      {required this.cityName,
      required this.time,
      this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherConsition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      time: json['current']['last_updated'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherConsition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
