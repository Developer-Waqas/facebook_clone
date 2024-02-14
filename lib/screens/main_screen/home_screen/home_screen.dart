import 'package:facebook_clone/components/containers/user_container.dart';
import 'package:facebook_clone/constants/app_color/app_color.dart';
import 'package:facebook_clone/constants/app_style/app_style.dart';
import 'package:flutter/material.dart';
import '../../../components/containers/my_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const CircleAvatar(
                maxRadius: 15,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              title: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: grey)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 3, left: 12, right: 12),
                  child: Text(
                    "What's on your mind?",
                    style: searchTextStyle,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.image,
                color: green,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[500],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'People you may know',
                    style: searchTextStyle,
                  ),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            ///<<<===== Friend data ========>>>>>>>>>
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 2,
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                children: [
                  UserNameContainer(
                    name: 'Waqas Muhammad',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Waqar Ahmad',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Alena',
                    icon: Icons.person_2_sharp,
                  ),
                  UserNameContainer(
                    name: 'Abdur Razzaq',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Haris',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Alyana',
                    icon: Icons.person_2_sharp,
                  ),
                  UserNameContainer(
                    name: 'Muhammad Eisa',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Muhammad Usman',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Aizal',
                    icon: Icons.person_2_sharp,
                  ),
                  UserNameContainer(
                    name: 'Muhammad Hasnain',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Muhammad Anas',
                    icon: Icons.person,
                  ),
                  UserNameContainer(
                    name: 'Iqra',
                    icon: Icons.person_2_sharp,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[500],
            ),
            Expanded(
              flex:2,
              child: Column(
                children: [
                  ///<<<<<<=========UserPosts=============>>>>>>>>
                  UserContainer(
                      image: AssetImage('assets/images/profile.png'),
                      userName: 'Waqas',
                      time: '2h ago'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
