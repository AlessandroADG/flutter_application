import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page',
          style: TextStyle(fontSize: 22, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Third Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
