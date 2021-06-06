import 'package:flutter/material.dart';
import 'history.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: Text("Account Detail"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
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
              onPressed: () {},
            ),
            SizedBox(width: 10.0),
          ],
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                children: [
                  Text(
                    'Account information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.edit),
                ],
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.only(top: 250),
              child: AccountInfo(),
            ),
          ],
        ));
  }
}


class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    final titles = [
      "Full Name",
      "Email",
      "Phone",
      "Address",
      "Gender",
      "Date of Birth"
    ];

    final subtitles = [
      "Abc",
      "abc@gmail.com",
      "+0900-78601",
      "House No 12/B, Karachi",
      "Female",
      "06-June-2021"
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(
              titles[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subtitles[index],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
