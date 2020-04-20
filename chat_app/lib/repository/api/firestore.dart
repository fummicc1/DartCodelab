import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

mixin FirestoreModel {
  Map<String, dynamic> get json;
  DocumentReference ref;
}

class FirestoreClient {
  Future<void> _persist(FirestoreModel model) {
    return model.ref.setData(model.json, merge: true);
  }

  Stream<Map<String, dynamic>> listenDocument(
      {@required String collectionName, @required String documentName}) {
    Firestore.instance
        .collection(collectionName)
        .document(documentName)
        .snapshots()
        .map((snapshot) => snapshot.data);
  }

  Stream<List<Map<String, dynamic>>> listenCollection(String collectionName) {
    return Firestore.instance.collection(collectionName).snapshots().map(
        (snapshots) =>
            snapshots.documents.map((document) => document.data).toList());
  }
}
