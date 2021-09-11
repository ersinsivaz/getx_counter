import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/views/counter_view.dart';
import '../controllers/counter_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(counterController.count.value.toString())),
            ElevatedButton(
                onPressed: () => Get.to(() => CounterView()),
                child: Text('Go to Counter View')),
            ElevatedButton(
                onPressed: counterController.setRandomNumber,
                child: Text('Get New Random Number')),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            onPressed: counterController.increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 2,
            onPressed: counterController.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
