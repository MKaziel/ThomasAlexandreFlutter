import 'package:appdev1/ProfilPage.dart';
import 'package:appdev1/main.dart';
import 'package:appdev1/model/color.dart';
import 'package:flutter/material.dart';
import 'package:appdev1/fonction/variable.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  bool switchColor = couleur == Colors.red ? true : false;

  onChangeColor(newSwitch) {
    setState(() {
      switchColor = newSwitch;
      if (switchColor == true) {
        couleur = Colors.red;
      } else {
        couleur = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 2,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilPage()));
              },
              child: Text("Profil")),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(title: 'Accueil')));
              },
              child: Text("Accueil")),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Button")),
          Switch(
              activeTrackColor: Colors.red,
              inactiveTrackColor: Colors.blue,
              value: switchColor,
              onChanged: (newSwitch) {
                onChangeColor(newSwitch);
              })
        ],
      ),
    );
  }
}
