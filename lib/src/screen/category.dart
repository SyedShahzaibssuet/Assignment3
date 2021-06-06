import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Categorystate createState() => Categorystate();
}

class Categorystate extends State<Category> {
  int selectedIndex = 0;
  List<String> categories = ["Laptop", "Desktop", "Mouse", "LCD", "Keyboard"];
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 16,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => categorybuilder(index),
        ),
      ),
    );
  }

  Widget categorybuilder(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colortext(selectedIndex, index),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: colorsected(selectedIndex, index),
            ),
          ],
        ),
      ),
    );
  }

  Color colorsected(selected, index) {
    Color setcolor = selected == index ? Colors.white : Colors.transparent;
    return setcolor;
  }

  Color colortext(selected, index) {
    Color setcolor = selected == index ? Colors.white : Colors.grey;
    return setcolor;
  }
}
