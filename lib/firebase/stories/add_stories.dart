// Stories Model: Title (String), userEmail (string), Story (String), anonymous (bool),  mood (string), upvotes (int 0) , public (bool)

import 'package:cloud_firestore/cloud_firestore.dart';

class AddNewStories {
  final String title;
  final String userEmail;
  final String stories;
  final bool anonymous;
  final String mood;
  final int upVotes;
  final bool public;
  AddNewStories({
    required this.title,
    required this.userEmail,
    required this.stories,
    required this.anonymous,
    required this.mood,
    this.upVotes = 0,
    required this.public,
  });

    // Create a CollectionReference called stories that references the firestore collection
    CollectionReference storiesCollection = FirebaseFirestore.instance.collection('stories');

    Future<void> addStories() async{
      // Call the stories's CollectionReference to add a new stories
      return await storiesCollection
          .add({
            'title': title,
            'userEmail': userEmail, 
            'stories': stories,
            'anonymous': anonymous,
            'mood': mood,
            'upVotes': upVotes,
            'public': public
          })
          .then((value) => print("Stories Added"))
          .catchError((error) => print("Failed to add Stories: $error"));
    }
}
