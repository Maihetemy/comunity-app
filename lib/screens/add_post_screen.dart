import 'package:firbase_test/services/firestore_service.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  TextEditingController postTitleController = TextEditingController();
  TextEditingController postDescriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            'Post Title',
            style: TextStyle(color: Colors.purple, fontSize: 18),
          ),
          SizedBox(
            height: 12,
          ),
          TextField(
            controller: postTitleController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Write your title ...',
              hintStyle: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          //Description
          Text(
            'Description',
            style: TextStyle(color: Colors.purple, fontSize: 18),
          ),
          SizedBox(
            height: 12,
          ),
          TextField(
            controller: postDescriptionController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Write your description ...',
              hintStyle: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () async {
                if (postTitleController.text.isNotEmpty &&
                    postDescriptionController.text.isNotEmpty) {
                  await FirestoreService().addPost(
                      postTitleController.text, postDescriptionController.text);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      'Post added',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.green,
                  ));
                  postTitleController.clear();
                  postDescriptionController.clear();
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white),
              child: Text('Add Post'))
        ],
      ),
    );
  }
}
