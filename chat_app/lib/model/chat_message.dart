import 'package:chat_app/repository/api/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatMessage with FirestoreModel {

  String message;
  String from;
  String to;
  DateTime createdAt;
  DateTime updatedAt;
  DocumentReference ref;

  @override
  Map<String, dynamic> get json => {
    "message": message,
    "from": from,
    "to": to,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "ref": ref
  };
}