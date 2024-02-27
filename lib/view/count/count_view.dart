import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/view/count/count_widget.dart';
import 'package:flutter_provider_basic/view_model/count_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CountView extends StatelessWidget {
  CountView({Key? key}) : super(key: key);

  late CountProvider _countProvider;

  @override
  Widget build(BuildContext context) {
    // Provider를 호출해 접근, listen: false를 통해 구독된 모든 위젯들에게 알림을 보내지 않게 한다.
    _countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Provider"),
      ),
      body: const CountWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _countProvider.add(); // 클릭 되었을 때 add() 이벤트 처리
            },
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove(); // 클릭 되었을 때 remove() 이벤트 처리
            },
          )
        ],
      ),
    );
  }
}
