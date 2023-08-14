import 'package:flutter/material.dart';
import 'package:weatherapp/Repository/API.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    API().getWeatherData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(padding: EdgeInsets.all(30),width: 500,
            height: 100,
            child: Center(child: Text('Gorakhpur',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),)),
          ),
          Container(padding: EdgeInsets.all(10),width: 100,
            child: Text('Today',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w200,)),),
          Container(padding: EdgeInsets.all(20),
            child: Text('88 F',style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color:  Colors.blue)),),
          Divider(color: Colors.pink,height: 10,thickness: 1,endIndent: 100, indent: 100),
          Container(child: Text('Sunny',style: TextStyle(fontWeight: FontWeight.w200, fontSize: 22)),),
          Container(
            color: Colors.grey.shade200,
            height: 150,width: 400,margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ),

          )
        ],
      ),
    );
  }
}
