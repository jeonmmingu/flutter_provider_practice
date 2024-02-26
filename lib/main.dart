import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/view/home/home.dart';
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
        create: (BuildContext context) => CountProvider(),
        child: Home(),
      ),
    );
  }
}
