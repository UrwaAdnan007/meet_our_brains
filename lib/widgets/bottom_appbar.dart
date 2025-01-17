import 'package:flutter/material.dart';

class BottomAppbar extends StatelessWidget {
  const BottomAppbar({super.key, this.iconcolor, this.bgColor});
  final Color? iconcolor;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 30,
                width: 30,
                color: Colors.lightBlue,
                child: Image.network(
                  'https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.amber)),
            child: const Text(
              'BOOK NOW',
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 78, 78, 78),
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.auto_awesome_motion,
              color: iconcolor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
