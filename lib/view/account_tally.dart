import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/controller/app_controll.dart';
import 'package:shopping/widgets/drawer.dart';

class AccountTally extends StatelessWidget {
  static const routName = '/Account tally';

  @override
  Widget build(BuildContext context) {
    final accountBalence = Provider.of<AppController>(context);
    var laborWork = accountBalence.count;
    var laborTk = (laborWork / 5);
    var countructorWork = accountBalence.count;
    var countructorTk = (countructorWork / 4);
    var engineerWork = accountBalence.count;
    var engineerTk = (engineerWork / 2);
    var ownerBlance = accountBalence.count;

    var totalcost = (laborTk + countructorTk + engineerTk);

    var stileownerBlance = (ownerBlance - totalcost);
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
            Text(
              "Owner Main Blance  :            \$${accountBalence.count}",
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Labor Fee  :                        \$$laborTk"),
            SizedBox(
              height: 30,
            ),
            Text("Countructor Fee  :                   \$$countructorTk"),
            SizedBox(
              height: 30,
            ),
            Text("Engineer Fee  :                        \$$engineerTk"),
            SizedBox(
              height: 30,
            ),
            Text("Total Cost  :                           \$$totalcost"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Owner Present Blance  :                 \$$stileownerBlance",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
