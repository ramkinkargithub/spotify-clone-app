import 'dart:js';

import 'package:flutter/material.dart';
import 'package:spotify/models/category.dart';
import 'package:spotify/models/music.dart';
import 'package:spotify/services/category_operatinos.dart';
import 'package:spotify/services/music_operations.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget createMusic(Music music) {
    return Column(
      children: [
        Image.network(music.imageURL, fit: BoxFit.cover),
        Text(music.name),
        Text(music.desc)
      ],
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (cntx, index) {
        return createMusic(musicList[index]);
      },
      itemCount: musicList.length,
    );
  }

  Widget createCategory(Category category) {
    return Container(
      color: Colors.black12,
      child: Row(
        children: [
          Image.network(
            category.imageURL,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              category.name,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createCategoryList() {
    List<Category> cateogryList = CategoryOperations.getCategories();
    List<Widget> cateogries = cateogryList
        .map((Category category) => createCategory(category))
        .toList();
    return cateogries;
  }

  Widget createGrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 400,
      child: GridView.count(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 5 / 2,
        crossAxisCount: 2,
        children: createCategoryList(),
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
              height: 10,
            ),
            createGrid(),
            createMusicList('Music for you')
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.3],
          ),
        ),
      ),
    );
  }
}
