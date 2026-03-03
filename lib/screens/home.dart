import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firbase_test/services/firestore_service.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream: FirestoreService().readPost(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text('No posts yet!'),
                    );
                  }
//
// ================================================

                  final posts = snapshot.data!.docs; //list
                  return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final data = posts[index].data() as Map<String, dynamic>;
                      final doc = posts[index];
                      final id = doc.id;
                      return Card(
                        child: ListTile(
                          title: Text(
                            data['Title'] ?? "Title",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                fontSize: 25),
                          ),
                          subtitle: Text(data['description'] ?? "Description"),
                          trailing: IconButton(
                              onPressed: () {
                                showDeleteDialog(context, id);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      );
                    },
                  );
                })));
  }
}

void showDeleteDialog(BuildContext context, String id) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text(
              'Delete Post',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            content: const Text('Are you sure you want to delete?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Cancel',
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    FirestoreService().deletePost(id);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        'Post Deleted',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.red,
                    ));
                    Navigator.pop(context);
                  },
                  child: Text('Delete'))
            ],
          ));
}
