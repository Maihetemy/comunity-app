import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  TextEditingController postTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              hintText: 'Write your post ...',
              hintStyle: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white),
              child: Text('Add Post'))
        ],
      ),
    );
  }
}
