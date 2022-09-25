import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';

// class Contactanos extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Contactanos'),
//           backgroundColor: Colors.black
//         ),
//         body: const Center(child: Text('Feed', style: TextStyle(fontSize: 60))),
//       );
// }

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Comunicaciones Flutter'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              width: 100,
              child: TextButton(
                child: Text(
                  'Whatsapp',
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  String mensaje = "Esto es un mensaje";
                  String destinatario = "+52555555555";
                  openwhatsapp(mensaje, destinatario);
                },
              ),
            )
          ]))),
    );
  }
}
