import 'package:facebook_clone/components/buttons/my_button.dart';
import 'package:facebook_clone/constants/app_color/app_color.dart';
import 'package:facebook_clone/constants/app_style/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
    IconData? icon;
    String name;
  MyContainer({super.key,
  this.icon,
  this.name='',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: grey,width: 2,),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(icon,size: 100,)),
            SizedBox(height: 70,),
            Text(name,
            style: usersNameTextStyle,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButtons(
                  height: 34,
                  width: 120,
                  color: blue,
                  icon: Icons.person_add_alt_1,
                  name: 'Add friend',
                ),
                Container(
                  height: 34,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Text('Remove',style: searchTextStyle,)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}