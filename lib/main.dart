import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/view/bottom_navigation/bottom_navigation_view.dart';
import 'package:flutter_provider_basic/view_model/bottom_navigation_provider.dart';
import 'package:flutter_provider_basic/view_model/count_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => BottomNavigationProvider(),
        child: BottomNavigationView(),
      ),
    );
  }
}
