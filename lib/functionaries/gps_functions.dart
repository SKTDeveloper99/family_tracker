
import 'package:family_tracker/functionaries/get_location.dart';
import 'package:flutter/material.dart';

class TestMapLocation extends StatelessWidget {
  const TestMapLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Settings"),
        backgroundColor: const Color.fromRGBO(0, 0, 128, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            // SizedBox(height: 16),
            // PermissionStatusWidget(),
            // Divider(height: 32),
            // ServiceEnabledWidget(),
            // Divider(height: 32),
            GetLocationWidget(),
            // Divider(height: 32),
            // ListenLocationWidget(),
            // Divider(height: 32),
            // ChangeSettings(),
            // Divider(height: 32),
            // ChangeNotificationWidget()
          ],
        ),
      ),
    );
  }
}