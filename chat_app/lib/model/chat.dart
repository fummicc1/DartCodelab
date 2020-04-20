import 'package:chat_app/repository/api/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chat with FirestoreModel {

  List<DocumentReference> users;
  DateTime createdAt;
  DateTime updatedAt;
  DocumentReference ref;


  @override
  Map<String, dynamic> get json => {
    "users": users,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "ref": ref
  };
}