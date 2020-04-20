import 'package:chat_app/repository/api/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User with FirestoreModel {
  @override
  Map<String, dynamic> get json => null;

  DocumentReference ref;

  User.fromMap(Map<String, dynamic> map) {

  }
}