import 'package:flutter/material.dart';
import 'widgets/account/login.dart';

import 'widgets/dataStorage.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text("Déconnexion"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(loggout: true)));
              },
            )
          ],
        ),
      ),
    );
  }
}