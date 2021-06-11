import 'package:appdev1/fonction/variable.dart';
import 'package:appdev1/model/drawer.dart';
import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
          backgroundColor: couleur,
        ),
        drawer: drawer(),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Container(
                  child: Column(children: [
                // ListView(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 300,
                        child: TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Text...',
                        )),
                      ),
                      Container(
                        width: 100,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20)),
                          onPressed: () {},
                          child: const Text('Envoyer'),
                        ),
                      ),
                    ])
              ])),
            )));
  }
}
