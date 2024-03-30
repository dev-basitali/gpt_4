import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Collection reference for messages
  CollectionReference get messagesRef => _firestore.collection('messages');

  // Add a message
  Future<void> addMessage(String message, String userId) async {
    final doc = messagesRef.doc();
    await doc.set({
      'message': message,
      'userId': userId,
      'timestamp': DateTime.now(),
    });
  }
}

// Stream or query messages
