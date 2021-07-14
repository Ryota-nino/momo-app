import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  late String title;
  late DateTime createdAt;
  bool isDone = false;
  late DocumentReference documentReference;

  Todo(DocumentSnapshot doc) {
    documentReference = doc.reference;

    final data = doc.data() as Map<String, dynamic>;

    title = data['title'].toString();

    final Timestamp timestamp = data['createdAt'] as Timestamp;
    createdAt = timestamp.toDate();
    // createdAt = DateTime.parse(timestamp.toDate().toString());

    // print(createdAt);
    // print(data);
  }
}
