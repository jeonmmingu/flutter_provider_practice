import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/view_model/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({Key? key}) : super(key: key);

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
