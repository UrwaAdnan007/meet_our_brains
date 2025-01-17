import 'package:flutter/material.dart';

class SwipeText extends StatelessWidget {
  const SwipeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.swipe,
          color: Colors.grey,
          size: 26,
        ),
        Text(
          'SWIPE RIGHT OR LEFT TO LIKE ',
          style: TextStyle(
              fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
