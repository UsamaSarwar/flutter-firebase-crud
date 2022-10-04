import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final dataCollection = FirebaseFirestore.instance.collection('DATA');
  String data = 'NULL';
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(data),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // 4 buttons in a column
          children: <Widget>[
            const SizedBox(
              width: double.maxFinite,
            ),
            // Create button
            ElevatedButton(
              child: const Text('Create'),
              onPressed: () {
                // Add data to firestore
                dataCollection.add({'data': 'CRUD'});
                // dataCollection.add({
                //   'username': 'Username from Sign Up field',
                //   'password': 'Password from Sign Up field',
                // });
                setState(() {});
                print('Data added');
              },
            ),
            // Read button
            ElevatedButton(
              child: const Text('Read'),
              onPressed: () {
                // Read data from firestore
                dataCollection.get().then((snapshot) {
                  for (var doc in snapshot.docs) {
                    data = doc['data'];
                  }
                });
                // // i.e. Login Code
                // dataCollection.get().then((snapshot) {
                //   for (var doc in snapshot.docs) {
                //     username = doc['username'];
                //     password = doc['password'];
                //   }
                // });
                // // Login Logic
                // if (username == 'Username from Sign In field' &&
                //     password == 'Password from Sign In field') {
                //   print('Login Successful');
                // } else {
                //   print('Login Failed');
                // }
                setState(() {});
                print('Data read');
              },
            ),
            // Update button
            ElevatedButton(
              child: const Text('Update'),
              onPressed: () {
                // Update data in firestore
                dataCollection.get().then((snapshot) {
                  for (var doc in snapshot.docs) {
                    doc.reference.update({'data': 'Updated $data'});
                  }
                });
                setState(() {});
                print('Data updated');
              },
            ),
            // Delete button
            ElevatedButton(
              child: const Text('Delete'),
              onPressed: () {
                // Delete data from firestore
                dataCollection.get().then((snapshot) {
                  for (var doc in snapshot.docs) {
                    doc.reference.delete();
                  }
                });
                setState(() {});
                print('Data deleted');
              },
            ),
          ],
        ),
      ),
    );
  }
}
