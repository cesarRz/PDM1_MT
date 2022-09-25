import 'package:flutter/material.dart';
import 'AboutUs.dart';
import 'Contact.dart';
import 'Opinion.dart';
import 'Webpage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bottom Navigation Bar',
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> screens = [
    AboutUs(),
    Contact(),
    Webpage(),
    Opinion(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          selectedItemColor: Color.fromARGB(255, 255, 0, 0),
          unselectedItemColor: Color.fromARGB(179, 255, 255, 255),
          iconSize: 40,
          //selectedFontSize: 25,
          //unselectedFontSize: 16,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.groups), label: 'Nosotros'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page), label: 'Contacto'),
            BottomNavigationBarItem(icon: Icon(Icons.web), label: 'Pagina Web'),
            BottomNavigationBarItem(
                icon: Icon(Icons.reviews), label: 'Opinion'),
          ],
        ),
      );
}
