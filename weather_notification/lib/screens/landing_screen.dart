import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LandingScreen extends StatelessWidget {
  final String title;
  const LandingScreen({Key key, this.title}) : super();

  @override
  Widget build(BuildContext context) {
     // api.openweathermap.org/data/2.5/weather?q={city name},{state},{country code}&appid={your api key}
    return Scaffold(
      body: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              gradients: [
                [
                  Color.fromRGBO(72, 74, 126, 1),
                  Color.fromRGBO(125, 170, 206, 1),
                  Color.fromRGBO(184, 189, 245, 0.7)
                ],
                [
                  Color.fromRGBO(72, 74, 126, 1),
                  Color.fromRGBO(125, 170, 206, 1),
                  Color.fromRGBO(172, 182, 219, 0.7)
                ],
                [
                  Color.fromRGBO(72, 73, 126, 1),
                  Color.fromRGBO(125, 170, 206, 1),
                  Color.fromRGBO(190, 238, 246, 0.7)
                ],
              ],
              durations: [19440, 10800, 6000],
              heightPercentages: [0.03, 0.01, 0.02],
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
            ),
            size: Size(double.infinity, double.infinity),
            waveAmplitude: 25,
            backgroundColor: Colors.grey,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
