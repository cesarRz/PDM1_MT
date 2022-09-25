import 'package:flutter/material.dart';

class Webpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Pagina Web'),
            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        body: const Center(
            child: Text('Pagina Web', style: TextStyle(fontSize: 60))),
      );
}
