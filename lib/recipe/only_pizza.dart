class Pizza {
  String imgURL;
  String name;
  String cost;
  String time;
  String ing;

  Pizza(this.imgURL, this.name, this.cost, this.time, this.ing);


  static List<Pizza> forPizza = [
    Pizza("assets/pizza/classic.png", "MARGARITA" ,"30~40 ming so'm" , "12 min" ,"3 ta"),
    Pizza("assets/pizza/margarita.png", "PIZZA PEPERONE","35~55 ming  so'm", "20 min" ,"5 ta" ),
    Pizza("assets/pizza/tovuqli.png", "PIZZA TOVUQLI", "35~55 ming  so'm", "18 min" ,"4 ta"),
    Pizza("assets/pizza/vege.png", "PIZZA GO'SHTLI", "45~65 ming  so'm", "15 min" ,"6 ta"),



  ];




}