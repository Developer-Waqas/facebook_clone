import 'package:facebook_clone/constants/app_color/app_color.dart';
import 'package:facebook_clone/constants/app_style/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButtons extends StatefulWidget {
    double height;
    double width;
    IconData? icon;
    String name;
    Color? color;


  MyButtons({super.key,
  this.height=0,
  this.width=0,
  this.icon,
  this.name='',
  this.color,

  
  });

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap:(){},
        hoverColor: Colors.green,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: widget.color,
          ),
          child: Row(
            children: [
              Center(child: Icon(widget.icon)),
              const SizedBox(width: 3,),
              Center(
                child: Text(widget.name,
                style: searchTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}