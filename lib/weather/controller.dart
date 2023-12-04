import 'dart:io';
import 'package:dio/dio.dart';
part 'model.dart';

class WeatherController{

  Future<void> getData() async{
    while(true)
      {
        print("Enter The City You Want");
        String city = stdin.readLineSync()!;
        final response = await Dio().get("https://api.openweathermap.org/data/2.5/weather?q=$city&appid=509dc5d730ff2dd6003b22f30ae93313");
        WeatherData model = WeatherData.fromJson(response.data);
        print(model.main.temp);
      }
  }
}