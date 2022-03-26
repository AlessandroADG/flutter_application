import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:theme_change/network_app/pages/post_model.dart';
import 'package:http/http.dart' as http;

const String url = 'https://jsonplaceholder.typicode.com/posts/';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  late Future<Post> fetchpost;
  int cont = 1;
  final TextEditingController textEditingController = TextEditingController();

  Future<Post> fetchPost(int value) async {
    final response = await http.get(Uri.parse(url + value.toString()));
    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      print('There is an error');
      throw Exception('Failed to load post');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchpost = fetchPost(cont);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Example of fetching data',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: cont != 0 ? FutureWidget() : const Center(child: CircularProgressIndicator()));
  }

  // ignore: non_constant_identifier_names
  Widget FutureWidget() {
    return FutureBuilder<Post>(
      future: fetchpost,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'userId ${snapshot.data!.userId.toString()}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'ID ${snapshot.data!.id.toString()}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Title ${snapshot.data!.title}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Body ${snapshot.data!.body}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: textEditingController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cont = int.parse(textEditingController.text);
                      fetchpost = fetchPost(cont);
                    });
                  },
                  child: const Text('Click on me for change the value of ID')),
            ],
          );
        } else if (snapshot.hasError) {
          return const Center(child: CircularProgressIndicator());
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
