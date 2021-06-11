import 'package:appdev1/fonction/variable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilPageState();
  }
}

class ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page de profil"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          backgroundColor: couleur,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/hot_issue.jpg"))),
            ),
            TextButton(
                onPressed: () {
                  displayPopup();
                },
                child: Text("Pop-up here")),
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Prénom",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nom",
                ),
              ),
            ),
          ],
        ))));
  }

  //Function
  Future displayPopup() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext cont) {
          return AlertDialog(
            title: Text("Test"),
            content: Text("test"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Valider")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Fermer"))
            ],
          );
        });
  }
}
