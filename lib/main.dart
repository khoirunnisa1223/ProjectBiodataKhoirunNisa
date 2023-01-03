import 'package:flutter/material.dart';
import 'package:biodata_flutter/pages/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata Khoirun Nisa',
      home: FirstPage(),
    );
  }
}