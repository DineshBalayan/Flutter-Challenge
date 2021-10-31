import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home_page.dart';
import 'package:get/get.dart';

import 'helper/base_controller.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(BaseController());
    return MaterialApp(
      title: 'Flutter Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(
        key: globalKey,
      ),
    );
  }
}
