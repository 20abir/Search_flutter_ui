import 'package:flutter/material.dart';
import 'package:practice2/search1.dart';
import 'package:practice2/search2.dart';
import 'package:practice2/search3.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_final_fields
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _controller,
          children: [
            Search1(),
            Search2(),
            Search3(),
          ],
        ),
      ),
    );
  }
}
