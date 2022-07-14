import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ShowFriends extends StatefulWidget {
  const ShowFriends({Key? key}) : super(key: key);

  @override
  State<ShowFriends> createState() => _ShowFriendsState();
}

class _ShowFriendsState extends State<ShowFriends> {
  List keys = [];
  var ref = FirebaseDatabase.instance.ref().child("friends/${FirebaseAuth.instance.currentUser?.uid}");

  _ShowFriendsState() {
    getKeys();
  }

  Future getKeys() async {
    List<String> keys1 = [];
    await ref.onValue.listen((event) {
      final love = Map<String,dynamic>.from(event.snapshot.value as Map);
      keys = love.keys.toList();
    });
    setState(() {
      keys = keys;
    });
  }

  @override
  Widget build(BuildContext context) {
    //getKeys();
    return Scaffold(
      appBar: AppBar(title: Text("Try to love yourself")),
      body: Column(
        children:[
          Text("${keys}"),
          //Text(keys[1]),
          Expanded(
            child: ListView(

          ),
          )
        ],
      ),

    );
  }
}
