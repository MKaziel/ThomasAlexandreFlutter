import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ConnexionPage.dart';
import 'InscrptionPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Choice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Choice Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void initialiseFlutterFire() async{
    var error;
    var init;
    try{
      await Firebase.initializeApp();
      setState(() {
        init = true;
      });
    }catch(e){
      setState(() {
        error = e;
      });
    }
  }

  @override
  void initState() {
    initialiseFlutterFire();
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConnexionPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(1.0),
                color: Colors.blue,
                child: Text(
                  'Connexion'
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InscriptionPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(1.0),
                color: Colors.green,
                child: Text(
                    'Inscription'
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
