import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TabBar's app",
      initialRoute: 'tabs',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        'tabs': (context) => const TabsScreen()
      },
    );
  }
}
// theme: ThemeData(primarySwatch: Colors.orange),
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),