import 'package:get/get.dart';
import 'package:getxmyimplementation/src/controller/heroes_controller.dart';

class HeroesBinding extends Bindings{
  void dependencies(){
    Get.lazyPut<HeroesController>(() => HeroesController());
  }
}