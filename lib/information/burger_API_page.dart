import 'package:flutter/foundation.dart';

class BurgerAPI  {
  String imgURL;
  String info;
  String name;
  String cost;
  String time;
  String ing;


  BurgerAPI(this.imgURL, this.info,this.name, this.cost, this.time, this.ing);


  static List<BurgerAPI> forBurgerApi = [
    BurgerAPI("assets/image_burger/b1.png", 'GAMBURGER, frantsuz kartosh\nkasi vitaminlar va mineral\nlarga boy: B6 vitamini - \n12,2%, E vitamini - 19,3%, \nkaliy - 18,1%, fosfor - 14,9%, \nmis - 11,7%' , "GAMBURGER" ,"12000 so'm" , "12 min" ,"4 ta"),
    BurgerAPI("assets/image_burger/b2.png", 'BIGBURGER, frantsuz kartosh\nkasi vitaminlar va mineral\nlarga boy: B6 vitamini - \n18,8%, E vitamini - 14,1%, \nkaliy - 12,2%, fosfor - 21,1%, \nmis - 12,1%' ,"BIGBURGER","20000 so'm", "15 min" ,"6 ta" ),
    BurgerAPI("assets/image_burger/b3.png", 'CHIZBURGER ZAKAS, frantsuz kartosh\nkasi vitaminlar va mineral\nlarga boy: B6 vitamini - \n26,1%, E vitamini - 12,0%, \nkaliy - 18,2%, fosfor - 14,9%, \nmis - 17,0%' ,"CHIZBURGER ZAKAS", "20000 so'm", "17 min" ,"6 ta"),
    BurgerAPI("assets/image_burger/b4.png",'CHIZBURGER, frantsuz kartosh\nkasi vitaminlar va mineral\nlarga boy: B6 vitamini - \n19,3%, E vitamini - 18,3%, \nkaliy - 18,0%, fosfor - 24,0%, \nmis - 14,5%' ,  "CHIZBURGER", "17000 so'm", "20 min" ,"5 ta"),
    BurgerAPI("assets/image_burger/b5.png", 'BURGER KING, frantsuz kartosh\nkasi vitaminlar va mineral\nlarga boy: B6 vitamini - \n17,0%, E vitamini - 21,8%, \nkaliy - 14,7%, fosfor - 17,9%, \nmis - 18,2%' ,"BURGER KING", "18000 so'm", "15 min" ,"3 ta"),
    BurgerAPI("assets/image_burger/b6.png",'BURGER, frantsuz kartosh\nkasi vitaminlar va mineral\nlarga boy: B6 vitamini - \n16,4%, E vitamini - 13,0%, \nkaliy - 11,9%, fosfor - 14,09%, \nmis - 10,7%' ,  "GAMBURGER", "12000 so'm", "10 min" ,"3 ta"),


  ];




}