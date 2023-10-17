import 'package:flutter/material.dart';

class MyPost extends StatefulWidget {
  const MyPost({super.key});

  @override
  State<MyPost> createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Post"),
      ),
      body: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4),),
          child: const ListTile(
        title: Text("No Post available"),
      )),
    );
  }
}
