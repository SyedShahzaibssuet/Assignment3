import 'package:e_commerce/src/screen/account.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/models/products.dart';
import 'category.dart';
import 'history.dart';

class Homepage extends StatefulWidget {
  _Homestate createState() => _Homestate();
}

class _Homestate extends State<Homepage> {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: Text("Home"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => History()));
              },
            ),
            IconButton(
              icon: Icon(Icons.account_balance_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              },
            ),
            SizedBox(width: 10.0),
          ],
          ),
      body: Column(
        children: [
          Category(),
          SizedBox(height: 10,),
          item(0, 1),
          SizedBox(height: 10,),
          item(2, 3),
          SizedBox(height: 10,),
          item(4, 5),
        ]),
    );
  }

  Row item(index1, index2) {
    return Row(children: [
      itemcard(index1),
      SizedBox(width:20),
      itemcard(index2),
    ]);
  }

  Column itemcard(index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width:20),
        Container(
          padding: EdgeInsets.all(20.0),
          height: 200,
          width: 160,
          decoration: BoxDecoration(
            color: products[index].color,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Image.asset(products[index].image),
        ),
        Text(products[index].title),
        Text("${products[index].price}"),
      ],
    );
  }
}
