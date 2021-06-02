import 'package:flutter/material.dart';
import 'package:redesain_1/widgets/card.dart';
import 'package:redesain_1/widgets/itemCard.dart';
import 'secondscreen.dart';

import '../constans.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[600],
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (Context) => SecondScreen()));
        },
        child: Center(
          child: Icon(
            Icons.settings_input_component_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: kDefaultPadding),
              height: size.height * 0.40,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.40 - 27,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/home/cewek.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 6),
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 2,
                                  color: Colors.black26)
                            ]),
                        child: TextField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: Colors.black38,
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.black38),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20, left: 30, bottom: 30),
                    child: Text(
                      "Popular places",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  ItemCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
