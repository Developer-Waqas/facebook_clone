import 'package:facebook_clone/screens/main_screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/app_color/app_color.dart';
import '../../constants/app_style/app_style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'facebook',
            style: appBarTextStyle,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: black,
                    ),
                    child: Icon(
                      Icons.add,
                      color: white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.search,
                    color: black,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.message,
                    color: black,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ], //actions
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.home,
                color: black,
                size: 30,
              ),
            ),
            Tab(
                child: Icon(
              Icons.person_add_alt_1_sharp,
              color: black,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.live_tv_rounded,
              color: black,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.shop_sharp,
              color: black,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.notifications,
              color: black,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.menu,
              color: black,
              size: 30,
            )),
          ]),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Friends Screen'))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Videos Screen'))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Market Place Screen'))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Notifications Screen'))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('InFo  Screen'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
