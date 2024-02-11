import 'package:flutter/material.dart';

 class UserContainer extends StatelessWidget {
  
  double? height;
  double? width;
  ImageProvider? backgroundImage;
  ImageProvider image;
  String userName;
  String time;
  String description;

  UserContainer({super.key,
    this.width, 
    this.height,
    this.backgroundImage,
    required this.image,
    required this.userName,
    required this.time,
    this.description='',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: backgroundImage,
              ),
              Text(userName),
              Icon(Icons.more_horiz),
              Icon(Icons.cancel_rounded),
            ],
          ),
          Text(time),
          SizedBox(height: 10,),
          Text(description),
          Image(image: image),
        ],
      ),
    );
  }
}
