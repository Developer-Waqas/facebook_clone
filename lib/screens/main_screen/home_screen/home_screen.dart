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
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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'),
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
