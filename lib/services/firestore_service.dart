// CRUD System =>

// C = create
// R = read
// U = Update
// D = delete

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // ===============================Post=============================
  Future<void> addPost(String title) async {
    await _db
        .collection('posts')
        .add({'Title': title, 'createdAt': Timestamp.now()});
  }
}
