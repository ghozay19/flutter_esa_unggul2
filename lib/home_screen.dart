import 'package:flutter/material.dart';
import 'package:flutter_kedua/profile_screen.dart';
import 'package:flutter_kedua/shared/button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Apps Kedua"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ///custombutton menggunakan container
          new CustomButton(
            TextTitle: 'LANJUT',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            ),
          )
        ],
      ),
//      bottomNavigationBar: ,
    );
  }
}
