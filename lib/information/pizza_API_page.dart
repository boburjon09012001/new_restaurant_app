class PizzaAPI {
  String imgURL;
  String info;
  String name;
  String cost;
  String time;
  String ing;

  PizzaAPI(this.imgURL, this.info,this.name, this.cost, this.time, this.ing);


  static List<PizzaAPI> forPizzaApi = [
    PizzaAPI("assets/pizza/classic.png","Margarita an'anaviy pomidorlarni o'z \nichiga oladi ular sous tayyorlash u/n\nzarur. Sosda sarimsoq, zaytun moyi \nva o'tlar ham bor. Sos pizza asosi \nbilan surtilgan - xamir xamiri doirasi."  ,"MARGARITA" ,"30~40 ming so'm" , "12 min" ,"3 ta"),
    PizzaAPI("assets/pizza/margarita.png", "Peperone an'anaviy pomidorlarni o'z \nichiga oladi ular sous tayyorlash u/n\nzarur. Sosda sarimsoq, zaytun moyi \nva o'tlar ham bor. Sos pizza asosi \nbilan surtilgan - xamir xamiri doirasi.", "PIZZA PEPERONE","35~55 ming  so'm", "20 min" ,"5 ta" ),
    PizzaAPI("assets/pizza/tovuqli.png", "Pitsa tovuqli an'anaviy pomidorlarni o'z \nichiga oladi ular sous tayyorlash u/n\nzarur. Sosda sarimsoq, zaytun moyi \nva o'tlar ham bor. Sos pizza asosi \nbilan surtilgan - xamir xamiri doirasi." ,"PIZZA TOVUQLI", "35~55 ming  so'm", "18 min" ,"4 ta"),
    PizzaAPI("assets/pizza/vege.png", "Pitsa go'shtli an'anaviy pomidorlarni o'z \nichiga oladi ular sous tayyorlash u/n\nzarur. Sosda sarimsoq, zaytun moyi \nva o'tlar ham bor. Sos pizza asosi \nbilan surtilgan - xamir xamiri doirasi." ,"PIZZA GO'SHTLI", "45~65 ming  so'm", "15 min" ,"6 ta"),



  ];




}