import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  RxInt _haddock = 0.obs;
  int get haddock => _haddock.value;
  set haddock(val) => _haddock.value = val;

  RxInt _type = 0.obs;
  int get type => _type.value;
  set type(val) => _type.value = val;

  BaseController();

  RxInt _redfish = 0.obs;
  int get redfish => _redfish.value;
  set redfish(val) => _redfish.value = val;

  TextEditingController weightController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    /*try {
      weightController.addListener(() {
        if (type == 0) {
          haddock = int.parse(weightController.text);
        } else {
          redfish = int.parse(weightController.text);
        }
      });
    } catch (e) {}*/
  }
}
