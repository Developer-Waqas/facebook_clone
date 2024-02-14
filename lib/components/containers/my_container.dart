import 'package:facebook_clone/components/buttons/my_button.dart';
import 'package:facebook_clone/constants/app_color/app_color.dart';
import 'package:facebook_clone/constants/app_style/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserNameContainer extends StatelessWidget {
  IconData? icon;
  String name;

  UserNameContainer({
    super.key,
    this.icon,
    this.name = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        width: 120,
        decoration: BoxDecoration(
          border: Border.all(
            color: grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Icon(
              icon,
              size: 100,
            )),
            const SizedBox(
              height: 30,
            ),
            Text(
              name,
              style: usersNameTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 1,),
                MyButtons(
                  height: 34,
                  width: 120,
                  color: blue,
                  icon: Icons.person_add_alt_1,
                  name: 'Add friend',
                ),
                const SizedBox(width: 2.3,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 34,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'Remove',
                        // style: searchTextStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 1,),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
