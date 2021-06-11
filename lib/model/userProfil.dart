import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class userProfil {
  var nom = "";
  var prenom = "";
  String email = "";
  String uid = "";
  String image = "";

  User(DocumentSnapshot snapshot){
    uid = snapshot.id;
    var maMap = snapshot.data();
    nom = maMap['nom'];
    prenom = maMap['prenom'];
    email = maMap['email'];
    image = maMap['image'];

  }
}