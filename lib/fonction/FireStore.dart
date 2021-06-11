import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';

class FireStore{
  final authStore = FirebaseAuth.instance;
  final dataStore = FirebaseFirestore.instance;



  //Connexion


  //Enregistrement des données

  Future enregistrement( String email, String pwd, String Nom, String Prenom) async {

    final  resultat = await authStore.createUserWithEmailAndPassword(email: email, password: pwd);
    final user = resultat.user;
    String id = user!.uid;
    Map <String, dynamic> map = {
      "nom": Nom,
      "prenom": Prenom,
      "email": email
    };
    addProfil(id, map);
  }

  void addProfil (String uid, Map <String, dynamic > map) {
    FirebaseFirestore.instance.collection('Profil').doc(uid).set(map);
  }

  Future <User?> connexion (String email, String password) async {
    final result = await authStore.signInWithEmailAndPassword(email: email, password: password);
    final User? user = result.user;
    return user;
  }
}