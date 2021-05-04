import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/controller/app_controll.dart';
import 'package:shopping/widgets/drawer.dart';

class LaborTeam extends StatelessWidget {
  static const routName = '/labor Team';

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
          builder: (context, labor, child) {
            var laborTeam = labor.count;
            var laborSallary = (laborTeam / 5);

            return Text(laborSallary.toString());
          },
        ),
      ),
    );
  }
}
