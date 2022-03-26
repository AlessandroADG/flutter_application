import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  String api = 'bfdc0fd8ecb1cf41d789166faff841f2';
  String? city;
  String icon = '';
  Future<WeatherModel>? weathermodel;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  Future<WeatherModel> getWeather() async {
    var response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api&units=metric'));
    if (response.statusCode == 200) {
      icon = "http://openweathermap.org/img/w/" +
          jsonDecode(response.body)['weather'][0]['icon'] +
          ".png";
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      print(response.statusCode);
      throw Exception('There is an error!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Example of Weather App',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow,
      body: weathermodel == null ? insertData(textEditingController.text) : showModel(),
    );
  }

  Widget insertData(String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          controller: textEditingController,
          decoration:
              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              city = textEditingController.text;
              weathermodel = getWeather();
            });
          },
          child: const Text('Submit'),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
        )
      ],
    );
  }

  Widget showModel() {
    return FutureBuilder<WeatherModel>(
        future: weathermodel,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Country ${snapshot.data!.country}',
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'City ${snapshot.data!.name}',
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Temperature ${snapshot.data!.temperature.toString()}',
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(icon),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const WeatherPage()));
                    },
                    child: const Text(
                      'Go Back',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
