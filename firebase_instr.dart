// Certainly! Below is a simple Flutter app that connects to Firebase Firestore to perform basic CRUD operations.
//
// **Steps:**
//
// 1. **Setup Firebase**:
// - Go to the Firebase console: https://console.firebase.google.com/
// - Create a new project if you don’t have one.
// - Add a new Android app to the project.
// - Download the `google-services.json` file and place it in your Flutter app in the `android/app` directory.
//
// 2. **Add Dependencies**:
// - In `pubspec.yaml`, add:
// ```yaml
// dependencies:
// flutter:
// sdk: flutter
// firebase_core: ^2.22.0
// cloud_firestore: ^4.14.2
// ```
//
// - In `android/build.gradle`:
// ```gradle
// buildscript {
// dependencies {
// // ...
// classpath 'com.google.gms:google-services:4.3.14'
// }
// }
// ```
//
// - In `android/app/build.gradle` at the end:
// ```gradle
// apply plugin: 'com.google.gms.google-services'
// ```
//
// 3. **Initialize Firebase**:
// - In `newness.dart`, initialize Firebase before the app starts:
// ```dart
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
// ```
//
// 4. **Simple CRUD App**:
// ```dart
//
//
//
//
//
// start uncommenting from here for the code
//
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Firebase CRUD',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: CrudDemo(),
//     );
//   }
// }
//
// class CrudDemo extends StatefulWidget {
//   @override
//   _CrudDemoState createState() => _CrudDemoState();
// }
//
// class _CrudDemoState extends State<CrudDemo> {
//   final _textController = TextEditingController();
//   final CollectionReference collection = FirebaseFirestore.instance.collection('items');
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Firebase CRUD')),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               controller: _textController,
//               decoration: InputDecoration(labelText: 'Add item'),
//             ),
//           ),
//           ElevatedButton(
//             child: Text('Add'),
//             onPressed: () async {
//               await collection.add({'name': _textController.text});
//               _textController.clear();
//             },
//           ),
//           Expanded(
//             child: StreamBuilder(
//               stream: collection.snapshots(),
//               builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                 if (!snapshot.hasData) return CircularProgressIndicator();
//                 return ListView.builder(
//                   itemCount: snapshot.data!.docs.length,
//                   itemBuilder: (context, index) {
//                     DocumentSnapshot doc = snapshot.data!.docs[index];
//                     return ListTile(
//                       title: Text(doc['name']),
//                       trailing: IconButton(
//                         icon: Icon(Icons.delete),
//                         onPressed: () async {
//                           await doc.reference.delete();
//                         },
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// end uncommenting from here for the code






//This is a basic app where you can add items to a Firestore collection and also delete them. Remember to set up Firestore in your Firebase console, and also ensure that you've set appropriate Firestore rules for read/write operations.