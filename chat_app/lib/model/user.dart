import 'package:chat_app/repository/api/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User with FirestoreModel {
  String uid;
  String name;
  DateTime signedInAt;
  DateTime signedUpAt;
  DocumentReference ref;

  @override
  Map<String, dynamic> get json => {
    "uid": uid,
    "name": name,
    "signedInAt": signedInAt,
    "signedUpAt": signedUpAt,
    "ref": ref
  };

  User.fromFirebase(FirebaseUser firebaseUser) {
    uid = firebaseUser.uid;
    signedUpAt = firebaseUser.metadata.creationTime;
    signedInAt = firebaseUser.metadata.lastSignInTime;
  }

  User.fromMap(Map<String, dynamic> map) {
    uid = map["uid"] as String;
    name = map["name"] as String;
    signedUpAt = (map["signedUpAt"] as Timestamp).toDate();
    signedInAt = (map["signedInAt"] as Timestamp).toDate();
    ref = map["ref"] as DocumentReference;
  }

  void updateSignedInAt(DateTime dateTime) {
    signedInAt = dateTime;
  }
}