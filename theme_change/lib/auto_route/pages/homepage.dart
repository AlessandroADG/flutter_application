// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:theme_change/auto_route/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  final appRouter = AppRouter();

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Example of book',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                context.router.root.push(const FirstRoute2());
              },
              child: const Text('Click on me')),
          ElevatedButton(
              onPressed: () {
                context.router.root.push(const SecondRoute());
              },
              child: const Text('Click on me')),
          ElevatedButton(
              onPressed: () {
                context.router.root.push(const ThirdRoute());
              },
              child: const Text('Click on me')),
        ],
      )),
    );
  }
}
