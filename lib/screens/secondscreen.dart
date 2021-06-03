import 'package:flutter/material.dart';
import 'package:redesain_1/widgets/button.dart';
import 'package:redesain_1/widgets/members.dart';

import 'homescreen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent
              ),
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                        child: GestureDetector(
                          child: Icon(
                            Icons.cancel_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>HomeScreen()
                            ));
                          },
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          margin: EdgeInsets.only(left: 30, right: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2.0, color: Colors.black12),
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/hotels/shinagawa.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 15, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shinagawa Prince Hotel',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '4.8',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Date time

                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            border: Border.all(width: 2.0, color: Colors.black12),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.calendar_today
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Thursday, June 10",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "9:30 - 11:00 PM", 
                                  style: TextStyle(color: Colors.grey, fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black12)
                      )
                    ),
                  ),

                  // Place

                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            border: Border.all(width: 2.0, color: Colors.black12),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.location_on
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Takanawa, Japan",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "08-8611 Tokyo-to, Minato-ku, Takanawa 4-10-30, Japan", 
                                    style: TextStyle(color: Colors.grey, fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      "Members",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),
                    ),
                  ),

                  members(),

                  ButtonSecondScreen(),
                ],
              ),
            ),
          ],
        ));
  }
}
