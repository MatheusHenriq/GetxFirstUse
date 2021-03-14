import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmyimplementation/src/controller/heroes_controller.dart';

class HomePage extends GetView<HeroesController>{
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Center(child: Text('Heroes')),
      ),
      body : ListView.builder(
        itemCount: controller.heroesList.length,
        itemBuilder:(_ ,index) => ListTile(
          title : Text(controller.heroesList[index].name),
          onTap : (){
            controller.changeFavorite(controller.heroesList[index]);
          },
          trailing : GetX<HeroesController>(builder : (_) => _.icon.value),
        ),
      ),
    );
  }
}