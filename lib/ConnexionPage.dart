import 'package:appdev1/fonction/variable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ProfilPage.dart';
import 'chat.dart';

class ConnexionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConnexionPageState();
  }
}

class ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page de connexion"),
          backgroundColor: couleur,
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-Mail",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => chat()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(1.0),
                color: Colors.blue,
                child: Text('Connexion'),
              ),
            ),
          ],
        )));
  }
}
