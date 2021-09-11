import 'package:get/get.dart';
import 'package:getx_counter/services/random_number_service.dart';

class CounterController extends GetxController {
  final RandomNumberService rns = Get.put(RandomNumberService());
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;

  setRandomNumber() async {
    var randomNumber = await rns.getRandomNumber();
    count.value = int.parse(randomNumber);
  }
}
