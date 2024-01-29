import 'package:flutter/material.dart';

import '../constants/app_color/app_color.dart';

class MyContainer extends StatelessWidget {
   MyContainer({super.key,this.name = ''});

  String name ;

  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(color: grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Icon(Icons.person,size: 50,),
                    Text(name),
                  ],
                ),
              ),
    );
  }
}