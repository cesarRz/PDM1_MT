import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Contacto'),
            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        body: const Center(
            child: Text('Contacto', style: TextStyle(fontSize: 60))),
      );
}
