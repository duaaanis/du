import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/utils/widgets/themes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get GoogleFonts => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      //theme: ThemeData(
        //primarySwatch: Colors.deepPurple,
        //appBarTheme: AppBarTheme(
         // color: Colors.white,
         // elevation: 0.0,
         // iconTheme: IconThemeData(color: Colors.black),
         // textTheme: Theme.of(context).textTheme,
         // )
    //  ),
      //darkTheme: ThemeData(
      //  brightness: Brightness.dark,
     // ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPage()
      },
    );
  }
}
