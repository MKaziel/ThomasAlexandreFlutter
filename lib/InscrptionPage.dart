import 'package:appdev1/fonction/FireStore.dart';
import 'package:flutter/material.dart';
import 'ProfilPage.dart';

class InscriptionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InscriptionPageState();
  }

}

class InscriptionPageState extends State<InscriptionPage> {

  var Nom ="";
  var Prenom="";
  var email="";
  var pwd="";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Page d'inscription"),
        ),
        body: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (event) {
                      setState(() {
                        email = event;
                      });
                    },
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
                    onChanged: (event) {
                      setState(() {
                        pwd = event;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password"
                    ),
                  ),
                ),
                /*Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password"
                    ),
                  ),
                ),*/
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (event) {
                      setState(() {
                        Prenom = event;
                      });
                    },
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
                    onChanged: (event) {
                      setState(() {
                        Nom = event;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nom",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilPage()),
                    );*/

                    //Alimentation userProfil
                    FireStore().enregistrement(email, pwd, Nom, Prenom);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(1.0),
                    color: Colors.blue,
                    child: Text(
                        'Inscription'
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}