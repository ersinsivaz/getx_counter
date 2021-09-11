import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find();
    return Scaffold(
      body: Center(
        child: Text('${counterController.count}'),
      ),
    );
  }
}
