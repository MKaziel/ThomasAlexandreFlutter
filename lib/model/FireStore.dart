import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class FireStore {
  final authStore = FirebaseAuth.instance;
  //Connexion FireBAse

  //Enregistrement des données dans FireBase
  Future enregistrement(String email, String pwd, String Nom, String Prenom) async {

    final resultat = await authStore.createUserWithEmailAndPassword(email: email, password: pwd);

  }
}