import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: ListView(
        children: [
          Container(
            height: size.height * 0.40,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      margin: EdgeInsets.only(left: 30, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Colors.black12),
                        borderRadius: BorderRadius.circular(8),
                        image:
                          DecorationImage(
                            image: AssetImage('assets/channel/aimer.jpg'),
                            fit: BoxFit.cover
                          ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Aimer',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}