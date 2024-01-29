import 'package:facebook_clone/common_widgets/my_container.dart';
import 'package:facebook_clone/constants/app_color/app_color.dart';
import 'package:facebook_clone/constants/app_style/app_style.dart';
import 'package:flutter/cupertino.dart';
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
      body: Column(
        children:  [
          const SizedBox(height: 10,),
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
                border: Border.all(color: grey)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 3,left: 12,right: 12),
                child: Text('What\'s on your mind?',style: searchTextStyle,),
              ),
            ),
            trailing: Icon(Icons.image,color: green,),
          ),
          const SizedBox(height: 5,),
          Container(
            height: 7,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[500]
            ),
          ),
          const SizedBox(height: 10,),
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('People you may know',style: searchTextStyle,),
                Text('See all',style: TextStyle(color: black),),
              ],
            ),            
          ),
           const SizedBox(height: 5,),
        ],
      ),
    );
  }
}
