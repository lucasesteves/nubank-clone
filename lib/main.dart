import 'package:flutter/material.dart';
import 'theme/themes.dart';
import 'package:get/get.dart';
import 'package:NuClone/pages/Pannel/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank clone',
      theme: makeAppTheme(),
      home: PannelWidget(),
    );
  }
}
