import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/screens/signin_screen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Gabriel Situmeang"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img/gabriel.png")),
          accountEmail: Text("gabriel@gmail.com"),
        ),
        DrawerListTile(
          iconData: Icons.logout,
          title: "LogOut",
          onTilePressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed Out");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            });
          },
          // child: ElevatedButton(
          //   child: Text("Logout"),
          //   onPressed: () {
          //     FirebaseAuth.instance.signOut().then((value) {
          //       print("Signed Out");
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SignInScreen()));
          //     });
          //   },
          // ),
        ),
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile(
      {Key? key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
