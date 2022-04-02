class Burger {
  String imgURL;
  String name;
  String cost;
  String time;
  String ing;

  Burger(this.imgURL, this.name, this.cost, this.time, this.ing);


  static List<Burger> forBurger = [
    Burger("assets/image_burger/b1.png", "GAMBURGER" ,"12000 so'm" , "12 min" ,"4 ta"),
    Burger("assets/image_burger/b2.png", "BIGBURGER","20000 so'm", "15 min" ,"6 ta" ),
    Burger("assets/image_burger/b3.png", "CHIZBURGER ZAKAS", "20000 so'm", "17 min" ,"6 ta"),
    Burger("assets/image_burger/b4.png", "CHIZBURGER", "17000 so'm", "20 min" ,"5 ta"),
    Burger("assets/image_burger/b5.png", "BURGER KING", "18000 so'm", "15 min" ,"3 ta"),
    Burger("assets/image_burger/b6.png", "GAMBURGER", "12000 so'm", "10 min" ,"2 ta"),


  ];




}