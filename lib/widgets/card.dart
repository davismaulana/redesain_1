import 'package:flutter/material.dart';
import 'package:redesain_1/screens/secondscreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CardStyle extends StatefulWidget {
  @override
  _CardStyleState createState() => _CardStyleState();
}

class _CardStyleState extends State<CardStyle> {
  List users = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    var apiURL = Uri.parse("https://reqres.in/api/users?page=2");
    var apiResult = await http.get(apiURL);

    if (apiResult.statusCode == 200) {
      var items = json.decode(apiResult.body)['data'];
      print(items);
      setState(() {
        users = items;
      });
    } else {
      setState(() {
        users = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            var fullname =
                users[index]['first_name'] + " " + users[index]['last_name'];
            var email = users[index]['email'];
            var avatar = users[index]['avatar'];

            return ListTile(
              title: Column(
                children: [
                  Container(
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.0, color: Colors.black12),
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(avatar.toString()),
                                  fit: BoxFit.cover),
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
                                      fullname.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      email.toString(),
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            top:
                                BorderSide(width: 1.0, color: Colors.black12))),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                            avatar: '$avatar',
                            email: '$email',
                            fullname: '$fullname'
                        )
                    )
                );
              },
            );
          }),
    );
  }
}
