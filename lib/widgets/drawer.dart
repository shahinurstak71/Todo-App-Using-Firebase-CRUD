import 'package:flutter/material.dart';
import 'package:shopping/view/add_member.dart';

import 'package:shopping/view/home_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 170,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Text('TODO APP'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreens.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(' Home Page'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AddMember.routeName);
            },
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text(' Add member'),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ),
        ],
      ),
    );
  }
}
