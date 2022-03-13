import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  final List activities = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){

      },child: const Icon(Icons.add),),appBar: AppBar(title: const Text(
        'Example of List tile app', style: TextStyle(fontSize: 22),),
        centerTitle: true,),
        body: ListView.builder(
            itemCount: activities.length, itemBuilder: (context, index) {
          return ListTile(title: activities.elementAt(index),
            trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.crop_square),),);
        }),),
    );
  }
}
