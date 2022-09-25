import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Nosotros'),
            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        body: const Center(
            child: Text('Nosotros', style: TextStyle(fontSize: 60))),
      );
}
