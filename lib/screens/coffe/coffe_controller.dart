import 'package:app1/data/coffe_data.dart';
import 'package:app1/screens/coffe/coffe_model.dart';

class CoffeController {
  Future<List<CoffeModel>> list() {
    return Future.delayed(const Duration(seconds: 1), () {
      var list = coffeData
          .map(
            (item) => CoffeModel.fromJson(item),
          )
          .toList();

      return list;
    });
  }
}
