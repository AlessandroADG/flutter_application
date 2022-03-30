import 'dart:math';

import 'package:flutter/material.dart';

class TapQuiz extends StatefulWidget {
  const TapQuiz({Key? key}) : super(key: key);

  @override
  _TapQuizState createState() => _TapQuizState();
}

class _TapQuizState extends State<TapQuiz> {
  var listForm = {1: 'circle', 2: 'square', 3: 'rectangle', 4: 'rombo'};
  List<String> listImage = ['circle', 'square', 'rectangle', 'rombo'];
  int score = 0;

  @override
  Widget build(BuildContext context) {
    int number = Random().nextInt(3) + 1;
    String getText() => 'Tap ${listImage.elementAt(number)}';
    String getCasual() => listImage.elementAt(number);
    void pressImage(int value) {
      setState(() {
        if (getCasual() == listForm[value]) {
          score++;
        } else {
          score--;
        }
      });
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text(
            'Tap Quiz',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          children: [
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  pressImage(2);
                },
                child: Image.asset('assets/square.png')),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  pressImage(3);
                },
                child: Image.asset('assets/rectangle.png')),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  pressImage(4);
                },
                child: Image.asset('assets/rombo.png')),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  pressImage(1);
                },
                child: Image.asset('assets/circle.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  getText(),
                  style: const TextStyle(fontSize: 20),
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  'Score: ' + score.toString(),
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ],
        ));
  }
}
