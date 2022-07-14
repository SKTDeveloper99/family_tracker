// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
//
// class TestShowFriends extends StatefulWidget {
//   const TestShowFriends({Key? key}) : super(key: key);
//
//   @override
//   State<TestShowFriends> createState() => _TestShowFriendsState();
// }
//
// class _TestShowFriendsState extends State<TestShowFriends> {
//   List friendsUID = [];
//   List friendsInfo = [];
//   final List<ListTile> tilesList1 = [];
//   var friendsExport;
//   var friendsProfile;
//   late int poly;
//   String friendsName = "";
//   String friendsLatitude = "";
//   String friendsLongitude = "";
//   final friendTilesList = <ListTile>[];
//   DatabaseReference ref = FirebaseDatabase.instance.ref().child("users/");
//
//
//   @override
//   void initState() {// this is called when the class is initialized or called for the first time
//     super.initState();
//     poly = 1;//  this is the material super constructor for init state to link your instance initState to the global initState context
//     setState(() {
//       poly = 1;
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print(poly);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Friend test !"),
//       ),
//       body: Column(
//
//       ),
//     );
//   }
//
//   Future<void> _fetchData() async {
//     FirebaseDatabase.instance.ref().child("friends/${FirebaseAuth.instance.currentUser?.uid}").onValue.listen((event) {
//       final myfriends = event.snapshot.value as Map;
//       friendsUID.addAll(myfriends.keys);
//       print("test1");
//       print(friendsUID);
//     });
//   }
//
// }
//         //     final myfriends = (snapshot.data! as DatabaseEvent).snapshot.value as Map;
//         //     friendsUID.addAll(myfriends.keys);
//         //   }
//           // return ListView.builder(
//           //   itemCount: friendsUID.length,
//           //   itemBuilder: (context,index) {
//           //     return StreamBuilder(
//           //       stream: FirebaseDatabase.instance.ref("users/").onValue,
//           //       builder: (BuildContext context, snapshot) {
//           //         if (snapshot.hasData) {
//           //           final tempAllUsers = (snapshot.data as DatabaseEvent).snapshot.value as Map;
//           //           //print(tempAllUsers);
//           //           // if (tempAllUsers.containsKey(friendsUID[index])) {
//           //           //   ref.orderByChild("uid").equalTo(friendsUID[index]).onValue.listen((event) {
//           //           //     friendsProfile = event.snapshot.value as Map;
//           //           //   });
//           //           // }
//           //         }
//
//                   // return const SizedBox(
//                   //   height: 40,
//                   //   child: ListTile(
//                   //     leading: Icon(Icons.local_cafe),
//                   //   ),
//                   // );
//                 //}
//
