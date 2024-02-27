import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/view_model/count_provider.dart';
import 'package:provider/provider.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Provider.of<CountProvider>(context).count.toString(), // count를 화면에 출력
        style: const TextStyle(fontSize: 40.0),
      ),
    );
  }
}
