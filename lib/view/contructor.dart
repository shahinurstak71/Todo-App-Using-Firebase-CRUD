import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/controller/app_controll.dart';
import 'package:shopping/widgets/drawer.dart';

class Contructor extends StatelessWidget {
  static const routName = '/contructor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Center(
        child: Consumer<AppController>(
          builder: (context, contructor, child) {
            var contructorTeam = contructor.count;
            var contructorSallary = (contructorTeam / 4);

            return Text(contructorSallary.toString());
          },
        ),
      ),
    );
  }
}
