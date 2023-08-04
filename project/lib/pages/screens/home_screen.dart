import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/pages/screens/DrawerScreen.dart';
import 'package:project/pages/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: DrawerScreen(),
      body: Center(
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
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 40),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let's Find",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The Latest and Latest News Information Today",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                    decoration:
                        InputDecoration.collapsed(hintText: "Search news")),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "News For You ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              jobs_item(context)
            ],
          ),
        ),
      ),
    );
  }

  Container jobs_item(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.sports, color: Color.fromARGB(255, 137, 163, 139)),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Sports",
                  style: subTitle(),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffFFEBE7),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.games,
                  color: Color.fromARGB(255, 205, 168, 161),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Esports",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffFFE2EB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.book,
                  color: Color.fromARGB(255, 187, 160, 169),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Education",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9F6FF),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.feed,
                  color: Color.fromARGB(255, 160, 181, 195),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Culinary",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle subTitle() => TextStyle(fontSize: 22, fontWeight: FontWeight.w700);
}
