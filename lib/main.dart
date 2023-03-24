import 'package:flutter/material.dart';
import 'package:portfolio_web/app/ui/home_page.dart';
import 'package:portfolio_web/app/utils/screen/screen_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: MyAppChild(),
    );
  }
}

class MyAppChild extends StatefulWidget {
  @override
  _MyAppChildState createState() => _MyAppChildState();
}

class _MyAppChildState extends State<MyAppChild> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return HomePage();
  }
}
