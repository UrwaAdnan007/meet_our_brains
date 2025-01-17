import 'dart:math';

import 'package:flutter/material.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(-1.03, -1),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double maxWidth = constraints.maxWidth;
              double maxHeight = constraints.maxHeight;
              return Container(
                width: maxWidth * 0.5,
                height: maxHeight * 0.5,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(82),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(80))),
              );
            },
          ),
        ),
        Align(
          alignment: const Alignment(0.97, 1),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double maxWidth = constraints.maxWidth;
              double maxHeight = constraints.maxHeight;
              return Container(
                width: maxWidth * 0.5,
                height: maxHeight * 0.5,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(82))),
              );
            },
          ),
        ),
        Align(
          alignment: const Alignment(-0.2, -0.1),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double maxWidth = constraints.maxWidth;
              double maxHeight = constraints.maxHeight;
              return Container(
                width: maxWidth * 0.93,
                height: maxHeight * 0.93,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(80),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://media.licdn.com/dms/image/v2/D4D03AQE1m-y5qy-K3Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1688673967611?e=2147483647&v=beta&t=QKjJ9Wq5N49--vJJG7SoTJjkct4LpEN5whlXzfOT-uk'))),
              );
            },
          ),
        ),
      ],
    );
  }
}
