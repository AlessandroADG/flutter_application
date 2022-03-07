import 'package:flutter/material.dart';

class ThemeApp extends StatefulWidget {
  const ThemeApp({Key? key}) : super(key: key);

  @override
  _ThemeAppState createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  bool isDark=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Example of Theme App',style: TextStyle(fontSize: 22),),centerTitle: true,),
        body: Center(
          child: ElevatedButton(onPressed: (){
            setState(() {
              isDark = !isDark;
            });
          },child: const Text('Click for change theme of the app'),),
        )
      ),
    );
  }
}
