import 'package:get/get.dart';

class HomeController extends GetxController {
  var isMale = true.obs;

  void changeMale(int index){
    isMale.value = index == 0;
  }
}
