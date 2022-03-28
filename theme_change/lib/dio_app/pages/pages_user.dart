import 'package:flutter/material.dart';
import 'package:theme_change/dio_app/dio/dio.dart';
import 'package:theme_change/dio_app/model/user_model.dart';

class ViewUser extends StatefulWidget {
  const ViewUser({Key? key}) : super(key: key);

  @override
  _ViewUserState createState() => _ViewUserState();
}

class _ViewUserState extends State<ViewUser> {
  final DioClient dioClient = DioClient();
  late Future<User> userInfo;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Example of App with Dio',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<User?>(
            future: dioClient.getData(id: '1'),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                User? userInfo = snapshot.data;
                if (userInfo != null) {
                  Data userData = userInfo.data;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(userData.avatar),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        userData.first_name,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        userData.last_name,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('There is an error'),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
