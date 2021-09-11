import 'package:get/get.dart';

class RandomNumberService extends GetConnect {
  Future<dynamic> getRandomNumber() async {
    var url =
        'https://www.random.org/integers/?num=1&min=1&max=6&col=1&base=10&format=plain&rnd=new';
    var response = await get(url);

    if (response.status.hasError) {
      print('STATUS TEXT');
      print(response.statusText);
      return Future.error(response.statusText.toString());
    } else {
      return response.body;
    }
  }
}
