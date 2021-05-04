import 'package:flutter/material.dart';
import 'package:shopping/view/account_tally.dart';
import 'package:shopping/view/contructor.dart';
import 'package:shopping/view/engineer.dart';
import 'package:shopping/view/home_page.dart';
import 'package:shopping/view/labor.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: double.infinity,
            color: Colors.green,
            child: Text('Sallery Distributer App'),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(LaborTeam.routName);
            },
            child: ListTile(
              leading: Icon(Icons.work),
              title: Text('Labor Team'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Contructor.routName);
            },
            child: ListTile(
              leading: Icon(Icons.construction_rounded),
              title: Text('Contructor'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Engineer.routName);
            },
            child: ListTile(
              leading: Icon(Icons.engineering),
              title: Text('Engineer'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AccountTally.routName);
            },
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Account Tally'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
        ],
      ),
    );
  }
}
