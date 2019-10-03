import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kedua/shared/button.dart';
import 'package:flutter_kedua/shared/color.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: hexColorHijau,
        title: Text('PROFILE'),
        iconTheme: IconThemeData(
          color: Colors.deepOrange
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  'https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-0/p552x414/69597698_3753397188019858_519072039244398592_n.jpg?_nc_cat=105&_nc_oc=AQkafIveZu3sAkjPYm34LpEMwNmiScUnqYDOQYRSPXSaCRxU9pyjMqs_BfQBXzcc5ow&_nc_ht=scontent-sin6-1.xx&oh=a421cbb51332a267ff0d1ea8b4263135&oe=5E34CFBA'),
              backgroundColor: Colors.transparent,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Najib Ghozy Mustofa'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email),
                        Text('naghomdev@gmail.com')
                      ],
                    ),
                    Divider(
                      height: 5,
                      color: Colors.black,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.phone),
                              Text('0812-3456-789')
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Icon(CupertinoIcons.phone),
                              Text('021-234567')
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            CustomButton(
              TextTitle: 'PENCET',
              onTap: () {
                Flushbar(
                  title: "Hey !",
                  message:
                      "My Name Is Ghozy !",
                  duration: Duration(seconds: 3),
                )..show(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
