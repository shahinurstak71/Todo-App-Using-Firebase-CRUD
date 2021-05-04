import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/controller/app_controll.dart';
import 'package:shopping/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home page';

  @override
  Widget build(BuildContext context) {
    final sendSallery = Provider.of<AppController>(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  sendSallery.amountTk();
                },
                child: Text('Send Sallery')),
            Text("\$${sendSallery.count}"),
            SizedBox(
              height: 20,
            ),
            Text('Owner Blance')
          ],
        ),
      ),
    );
  }
}
