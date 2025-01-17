import 'package:flutter/material.dart';
import 'package:meet_our_brains/page/meet_our_brains_page.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MeetOurBrainsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
