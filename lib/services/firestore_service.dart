// CRUD System =>

// C = create
// R = read
// U = Update
// D = delete

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // ===============================Create Post=============================
  Future<void> addPost(String title, String description) async {
    await _db.collection('posts').add({
      'Title': title,
      'description': description,
      'createdAt': Timestamp.now()
    });
  }

  // ===============================Read Posts=============================

  Stream<QuerySnapshot> readPost() {
    return _db
        .collection('posts')
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

// ===============================delete Post=============================

  Future<void> deletePost(String id) async {
    await _db.collection('posts').doc(id).delete();
  }
}
