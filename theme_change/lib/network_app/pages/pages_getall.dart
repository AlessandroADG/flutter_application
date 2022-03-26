import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:theme_change/network_app/pages/post_model.dart';
import 'package:http/http.dart' as http;

const String url = 'https://jsonplaceholder.typicode.com/posts';

class GetAllPage extends StatefulWidget {
  const GetAllPage({Key? key}) : super(key: key);

  @override
  _GetAllPageState createState() => _GetAllPageState();
}

class _GetAllPageState extends State<GetAllPage> {
  late List<Post> postAll;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadGetAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Get all the post!',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: postAll.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(postAll[index].userId.toString()),
              trailing: Text(postAll[index].id.toString()),
              title: Text(
                postAll[index].title,
                style: const TextStyle(fontSize: 15),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 2,
            );
          },
        ));
  }

  getAllPost() async {
    List<Post> result = [];
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> bodyData = json.decode(response.body);
      bodyData.forEach((postvalue) {
        Post post = Post.fromJson(postvalue);
        result.add(post);
      });
    } else {
      print('Error');
      throw Exception('Error to get all post');
    }
    return result;
  }

  loadGetAll() async {
    try {
      postAll = await getAllPost();
    } catch (e) {
      print(e);
    }
    setState(() {});
  }
}
