import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/view/home/widgets/count_home_widget.dart';
import 'package:flutter_provider_basic/view_model/count_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  late CountProvider _countProvider;

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Basic !"),
      ),
      body: const CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _countProvider.add(); // 클릭 되었을 때 add()
            },
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove(); // 클릭 되었을 때 remove()
            },
          ),
        ],
      ),
    );
  }
}
