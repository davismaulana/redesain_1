import 'package:flutter/material.dart';

class ButtonSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 40),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orangeAccent,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
          onPressed: (){}, 
          child: Center(
            child: Text(
              "Book it!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ),
      ),
    );
  }
}