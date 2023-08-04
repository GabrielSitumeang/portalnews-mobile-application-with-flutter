import 'package:flutter/material.dart';
import 'package:project/pages/screens/account.dart';
import 'package:project/pages/screens/home_screen.dart';
import 'package:project/pages/screens/news.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;
  final List<Widget> screens = [HomeScreen(), News(), Account()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.home),
      //   onPressed: () {},
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 160,
                    onPressed: () {
                      setState(() {
                        currentScreen = News();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.newspaper,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "News",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Account();
                        currentTab = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.manage_accounts,
                          color: currentTab == 5 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                              color:
                                  currentTab == 5 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
