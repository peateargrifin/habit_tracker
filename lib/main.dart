import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/homepg.dart';
import 'package:habit_tracker/themes/dark.dart';
import 'package:habit_tracker/themes/themeprov.dart';
import 'package:provider/provider.dart';

import 'db/habit_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await habitdb.init();
  await habitdb().savefirstlaunchdate();
  runApp(
      ChangeNotifierProvider(
    create: (context) => themeprovider(),
      child: const MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepg( ),
      theme: Provider.of<themeprovider>(context).themedata,

    );
  }
}
