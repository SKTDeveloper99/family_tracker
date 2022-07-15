import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowFriends extends StatefulWidget {
  const ShowFriends({Key? key}) : super(key: key);

  @override
  State<ShowFriends> createState() => _ShowFriendsState();
}

class _ShowFriendsState extends State<ShowFriends> {
  late List keys = [];
  late List usernames = [];
  var ref = FirebaseDatabase.instance.ref().child("friends/${FirebaseAuth.instance.currentUser?.uid}");
  final ref1 = FirebaseDatabase.instance.ref().child("users/");
  final Completer<GoogleMapController> _mapController = Completer();
  var friendsProfile;
  var usernameOutput;
  var latitudeOutput;
  var longitudeOutput;

  void getKeys() async {
    ref.onValue.listen((event) {
      final love = Map<String,dynamic>.from(event.snapshot.value as Map);
      keys = love.keys.toList();
      });
  }

  @override
  Widget build(BuildContext context) {
    getKeys();
    //getFriendsInfo();
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: StreamBuilder(
          stream: ref1.orderByKey().onValue,
          builder: (context, snapshot) {
           if(snapshot.hasData) {
             final tilesList = <ListTile> [];
             final allUsers = Map<String,dynamic>.from(
                 (snapshot.data! as DatabaseEvent).snapshot.value as Map);
             for (int i = 0; i < keys.length; i++) {
               if (allUsers.keys.contains(keys[i])) {
                 final nextTile = ListTile(
                   leading: const Icon(Icons.people),
                   title: Text("${allUsers[keys[i]]['username']}"),
                   subtitle: Text("${allUsers[keys[i]]['latitude']}, ${allUsers[keys[i]]['longitude']}"),
                 );
                 tilesList.add(nextTile);
               }
             }
             return Column(
               children:  [
                  Flexible(
                      flex: 3,
                     child: StoreMap(
                       initialPosition: const LatLng(37.7786, -122.4375),
                       mapController: _mapController,
                     )
                 ),
                 Flexible(
                   flex: 2,
                   child: ListView(
                     children: tilesList,
                   ),
                 ),
               ],
             );
           }
           return Column(
           );
          }),
    );
  }
}

class StoreMap extends StatelessWidget {
  const StoreMap({
    Key? key,
    required this.initialPosition,
    required this.mapController,
  }) : super(key: key);

  final LatLng initialPosition;
  final Completer<GoogleMapController> mapController;


  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 12,
        ),
        // markers: documents
        //     .map((document) => Marker(
        //   markerId: MarkerId(document['placeID'] as String),//document['placeID'] as String
        //   icon: BitmapDescriptor.defaultMarkerWithHue(_pinkHue),
        //   position: LatLng(
        //     document['location'].latitude as double,
        //     document['location'].longitude as double,
        //     //document['location'].longitude as double,
        //   ),
        //   infoWindow: InfoWindow(
        //     title: document['name'] as String, //document['name'] as String
        //     snippet: document['address'] as String, //document['address'] as String
        //   ),
        // )).toSet(),
        onMapCreated: (mapController) {
          this.mapController.complete(mapController);
        }
    );

  }

}


