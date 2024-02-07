import 'package:facebook_clone/components/containers/my_container.dart';
import 'package:facebook_clone/constants/app_color/app_color.dart';
import 'package:facebook_clone/constants/app_style/app_style.dart';
import 'package:flutter/material.dart';

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
                    'What\'s on your mind?',
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
            Container(
              height: 7,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[500]),
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
                  Text(
                    'See all',
                    style: TextStyle(color: black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 7,
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                children: [
                  MyContainer(
                    name: 'Waqas Muhammad',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Waqar Ahmad',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Aizah Khan',
                    icon: Icons.person_2_sharp,
                  ),
                  MyContainer(
                    name: 'Abdur Razzaq',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Haris',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Yumna Zaidi',
                    icon: Icons.person_2_sharp,
                  ),
                  MyContainer(
                    name: 'Muhammad Eisa',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Muhammad Usman',
                    icon: Icons.person,
                  ),MyContainer(
                    name: 'Dur e Fishan',
                    icon: Icons.person_2_sharp,
                  ),
                  MyContainer(
                    name: 'Muhammad Hasnain',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Muhammad Anas',
                    icon: Icons.person,
                  ),
                  MyContainer(
                    name: 'Saher Khan',
                    icon: Icons.person_2_sharp,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
