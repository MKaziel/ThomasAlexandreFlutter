import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class userProfil {
  var Uid;
  String Nom = "";
  String Prenom = "";
  String EMail = "";
  String Image = "";

  userProfil(DocumentSnapshot ds) {
    /*Uid = ds.id;
    var maMap = ds.data().toMap();
    if (ds.data() != null){

      Nom = maMap["Nom"];
      Prenom = maMap["Prenom"];
      EMail = maMap["EMail"];
      Image = maMap["Image"];
    }*/

    Uid = ds.id;
    Object? maMap = ds.data();

  }
}