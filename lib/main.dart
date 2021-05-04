import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/controller/app_controll.dart';
import 'package:shopping/view/account_tally.dart';
import 'package:shopping/view/contructor.dart';
import 'package:shopping/view/engineer.dart';

import 'package:shopping/view/home_page.dart';
import 'package:shopping/view/labor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppController>(
          create: (ctx) => AppController(),
        )
      ],
      child: MaterialApp(
        home: HomePage(),
        theme: ThemeData(primaryColor: Colors.grey[200]),
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          LaborTeam.routName: (ctx) => LaborTeam(),
          Contructor.routName: (ctx) => Contructor(),
          Engineer.routName: (ctx) => Engineer(),
          AccountTally.routName: (ctx) => AccountTally()
        },
      ),
    );
  }
}
