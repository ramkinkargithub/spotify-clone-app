import 'package:flutter/material.dart';
import 'package:spotify/models/category.dart';
import 'package:spotify/services/category_operatinos.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget createCategory(Category category) {
    return Container(
      color: Colors.lightGreen,
      child: Row(
        children: [
          Image.network(
            category.imageURL,
            fit: BoxFit.cover,
          ),
          Text(category.name)
        ],
      ),
    );
  }

  Widget createGrid() {
    return Container(
      height: 200,
      width: 200,
      child: GridView.count(
        crossAxisCount: 2,
        children: ,
      ),
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
      title: Text(message),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.settings),
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            createAppBar('Welcome Back'),
            SizedBox(
              height: 2,
            ),
            createGrid()
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.3],
          ),
        ),
      ),
    );
  }
}
