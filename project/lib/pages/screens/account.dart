import 'package:flutter/material.dart';
import 'package:project/pages/screens/DrawerScreen.dart';
import 'package:profile/profile.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        drawer: DrawerScreen(),
        body: Center(
          child: Profile(
            imageUrl:
                "https://media.licdn.com/dms/image/D5603AQF84SKPB0_qnw/profile-displayphoto-shrink_800_800/0/1671454406397?e=1695859200&v=beta&t=a06VsfylE0fsRpJ0N9lSyzzGOBpddbWEV176-t1Fe4I",
            name: "Gabriel Ignatius Situmeang",
            website: " ",
            designation: "Android Developer",
            email: "gabriel@gmail.com",
            phone_number: "82272947024",
          ),
        ));
  }
}
