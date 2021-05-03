import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping/view/home_page.dart';

import 'package:shopping/widgets/drawer.dart';

class AddMember extends StatefulWidget {
  static const routeName = '/Add member page';

  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  final _form = GlobalKey<FormState>();

  final TextEditingController _textAdd = TextEditingController();

  Future<void> _addtodo() async {
    if (_textAdd.text.length <= 0) {
      return;
    }

    final manage = FirebaseFirestore.instance.collection('todo');
    await manage.add({
      "title": _textAdd.text,
    });

    _textAdd.text = '';

    Navigator.of(context).pushReplacementNamed(HomeScreens.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Add member'),
        centerTitle: true,
      ),
      body: Form(
        key: _form,
        child: Column(
          children: [
            TextField(
              controller: _textAdd,
              decoration: InputDecoration(hintText: 'Add member name'),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomeScreens.routeName);
                    },
                    child: Text('cancel')),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      _addtodo();
                    },
                    child: Text('Add member')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
