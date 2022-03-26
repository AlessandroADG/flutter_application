import 'package:flutter/material.dart';
import 'package:theme_change/network_app/pages/display_post.dart';
import 'package:theme_change/network_app/pages/pages_getall.dart';
import 'package:theme_change/network_app/pages/pages_post.dart';

class DecisionPage extends StatelessWidget {
  const DecisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Page for Decision',
          style: TextStyle(fontSize: 22, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PostPage()));
                },
                child: const Text(
                  'GET',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PagePost2()));
                },
                child: const Text(
                  'POST',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GetAllPage()));
                },
                child: const Text(
                  'GET ALL',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
