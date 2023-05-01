import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
Widget build(BuildContext context) {
  var babyList = ['Aline', 'Marion'];
      return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('Vous avez ${babyList.length} bébés :'),
          ),
          for (var baby in babyList)
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(baby),
            )
      ],
      );
  }
}