import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:weatherapp/Model/WeatherModel.dart';
import 'package:weatherapp/utils/Constants.dart';
class API{
Future<void> getWeatherData()async{
  final response= await http.get(Uri.parse(URL));
  var data=jsonDecode(response.body);
  print(data);

}

}