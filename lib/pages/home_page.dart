import 'package:flutter/material.dart';
import './first_tab.dart';
import './second_tab.dart';
import './third_tab.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = 'None Clicked';
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        key: drawerKey,
        endDrawer: const Drawer(),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'SRC',
                //icon: Icon(),
              ),
              Tab(
                text: 'BSA',
              ),
              Tab(
                text: 'ESA',
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  text = "Cast button Clicked";
                });
              },
              icon: const Icon(Icons.cast),
              splashRadius: 10,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  text = "Notification Clicked";
                });
              },
              icon: const Icon(Icons.notifications),
              splashRadius: 10,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  text = "Search Clicked";
                });
              },
              icon: const Icon(Icons.search),
              splashRadius: 10,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  drawerKey.currentState?.openEndDrawer();
                });
              },
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              splashRadius: 10,
            ),
          ],
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
          title: const Text("HOME PAGE"),
        ),
        body: const TabBarView(
          children: [
            FirstTab(),
            SecondTab(),
            ThirdTab(),
          ],
        ),
      ),
    );
  }
}
