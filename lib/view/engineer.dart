import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/controller/app_controll.dart';
import 'package:shopping/widgets/drawer.dart';

class Engineer extends StatelessWidget {
  static const routName = '/engineer';

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
          builder: (context, engineer, child) {
            var engineerTeam = engineer.count;
            var engineerSallary = (engineerTeam / 2);

            return Text(engineerSallary.toString());
          },
        ),
      ),
    );
  }
}
