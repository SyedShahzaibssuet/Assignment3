import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/src/screen/account.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _Historystate createState() => _Historystate();
}

class _Historystate extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text("Search History"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_balance_outlined),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            },
          ),
          SizedBox(width: 10.0),
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.all(10),
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                searchBar(),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.only(top: 100),
            child: TilesView(),
          ),
        ],
      ),
    );
  }
}

Widget searchBar() {
  return Container(
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search !',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        icon: Icon(
          Icons.search,
          size: 50,
        ),
      ),
    ),
  );
}

class TilesView extends StatefulWidget {
  const TilesView({Key? key}) : super(key: key);

  @override
  _TilesViewState createState() => _TilesViewState();
}

class _TilesViewState extends State<TilesView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: products[index].image,
            ),
            title: Text(
              products[index].title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                ),
                Text(
                  '23 (reviews)',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            trailing: Text(
              "\$ ${products[index].price}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
