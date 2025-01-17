import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key, this.iconcolor, this.iconBg});
  final Color? iconcolor;
  final Color? iconBg;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 100,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Meet our Brains',
                style: TextStyle(
                    fontSize: 22,
                    color: iconcolor,
                    fontWeight: FontWeight.w400),
              ),
              Material(
                elevation: 1.5,
                shape: const CircleBorder(),
                color: Colors.transparent,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: iconBg,
                  child: Icon(
                    Icons.search_rounded,
                    color: iconcolor,
                    size: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
