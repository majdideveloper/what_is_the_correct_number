import 'dart:math';

import 'package:get/get.dart';

class GameController extends GetxController{
 
 int numberComputer = Random().nextInt(10);

 int numberChooseUser = 0;

 String compareBetweenNumbers ( ){
   if (numberChooseUser < numberComputer){
     return 'is too low';
   }
    if (numberChooseUser > numberComputer){
     return 'is too high';
   }
   return'yes it is corret number';

 }

 playAgian (){
   numberComputer = Random().nextInt(10);
   
 }


  
 
  
 



}