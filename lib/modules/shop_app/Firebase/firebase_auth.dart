// Import the required Firebase packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

// Initialize Firebase
final FirebaseAuth _auth = FirebaseAuth.instance;
final DatabaseReference _database = FirebaseDatabase.instance.reference();

// Authenticate the user using Firebase Authentication
Future<void> signInWithEmail(String email, String password) async {
  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Get the user data from the Realtime Database
    String userId = userCredential.user!.uid;
    DataSnapshot snapshot = await _database.child('users/$userId').once();
    Map userData = snapshot.value;

    //Use the user data in your application
    print(userData['name']);
  } catch (e) {
    // Handle authentication errors
    print(e);
  }
}