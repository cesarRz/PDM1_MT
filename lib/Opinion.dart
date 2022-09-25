import 'package:flutter/material.dart';

class Opinion extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Opiniones'),
            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        body: const Center(
            child: Text(
          'Opinion del Cliente',
          style: TextStyle(fontSize: 40),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )),
      );
}
