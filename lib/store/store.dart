import 'package:get/state_manager.dart';

class StoreController extends GetxController {
  var visible = true.obs;

  change() {
    visible.value = !visible.value;
  }
}
