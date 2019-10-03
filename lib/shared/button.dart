import 'package:flutter/material.dart';

import '../profile_screen.dart';


class CustomButton extends StatelessWidget {
  String TextTitle;
  VoidCallback onTap;


  CustomButton({this.TextTitle,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.lightGreen,
                  blurRadius: 5,
                )
              ]),
          child: Center(
            child: Text(
              TextTitle,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
