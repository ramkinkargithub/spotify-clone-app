import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Home',
      style: TextStyle(
        color: Colors.yellow,
        fontSize: 40,
      ),
    );
  }
}
