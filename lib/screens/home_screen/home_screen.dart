import 'package:flutter/material.dart';

import '../../constants/app_color/app_color.dart';
import '../../constants/app_style/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                color: grey,
                size: 30,
              ),
            ),
            Tab(
                child: Icon(
              Icons.person_add_alt_1_sharp,
              color: grey,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.live_tv_rounded,
              color: grey,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.shop_sharp,
              color: grey,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.notifications,
              color: grey,
              size: 30,
            )),
            Tab(
                child: Icon(
              Icons.list_outlined,
              color: grey,
              size: 30,
            )),
          ]),
        ),
        body: const TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Home Screen'))
              ],
            ),
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
