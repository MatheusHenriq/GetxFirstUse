import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmyimplementation/src/models/heroes_model.dart';

class HeroesController extends GetxController{

  

  List<Heroes> heroesList = [
    Heroes(name : 'Thor'),
    Heroes(name : 'Homem-Aranha'),
    Heroes(name : 'Ben 10'),
    Heroes(name : 'Capitão América'),
    Heroes(name : 'Homem de Ferro'),
  ];

  RxBool isFavorite = false.obs;
  Rx icon = Icon(Icons.star, color : Colors.yellow).obs;
 
  changeFavorite(Heroes hero){
    isFavorite.toggle();
    hero.isFavorite = isFavorite.value;     
    icon = hero.isFavorite ? Icon(Icons.star, color : Colors.yellow).obs : Icon(Icons.star_border).obs; 
  }

  

  

}