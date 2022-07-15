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

// List listExport =[];
// StreamBuilder(
//   stream: FirebaseDatabase.instance.ref().child("friends/$uid").orderByKey().onValue,
//   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//     if (snapshot.hasData) {
//       final tempList = Map<String, dynamic>.from(
//           (snapshot.data! as DatabaseEvent).snapshot.value as Map);
//       listExport.addAll(tempList.values.map((value) {
//         return listExport;
//       }));
//       friendsList.addAll(listExport);
//       setState(() {
//         friendsList;
//       });
//     } else if (snapshot.connectionState == ConnectionState.waiting) {
//       return const Center(
//           child: CircularProgressIndicator());
//     } else if (snapshot.hasError) {
//       return Center(child: Text(snapshot.error.toString()));
//     }
//     return const ListTile();
//   },
// );

// body: Column(
//   children:[
//     //Text("${keys[1]}"),
//     Text("${keys.length}"),
//     //Text("${usernames[0]}"),
//     //Text("${usernames[1]}"),
//     //Text("${keys[0]}"),
//     Expanded(
//       child: ListView(
//
//
//     ),
//     )
//   ],
// ),

// allUsers.forEach((key, value) {
//   final nextPerson = Map<String,dynamic>.from(value);
//   if(nextPerson['uid'] == "oiRilP6NeDUweqvJseW3ka5Ryc32" ) {
//      print("Yes");
//      print
//   }
//   final orderTile = ListTile(
//       leading: Icon(Icons.local_cafe),
//       title: Text(nextPerson['quote']),
//       subtitle: Text(nextPerson['author']));
//   tilesList.add(orderTile);
// });
