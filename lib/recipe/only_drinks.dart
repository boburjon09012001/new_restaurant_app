class Drink{
  String imgURL;
  String name;
  String cost;
  String time;
  String ing;

  Drink(this.imgURL, this.name, this.cost, this.time, this.ing);


  static List<Drink> forDrinks = [
    Drink("assets/tea/tea1.png", "CHOY" ,"2000 so'm" , "2 min" ,"1 ta"),
    Drink("assets/tea/tlemon.png", "LIMON CHOY","5000  so'm", "3 min" ,"2 ta" ),
    Drink("assets/tea/tasal.png", "ASAL CHOY", "3000  so'm", "3 min" ,"1 ta"),
    Drink("assets/tea/tbardak.png", "BARDAK CHOY", "5000  so'm", "5 min" ,"3 ta"),
    Drink("assets/tea/tqora.png", "COFFE QORA", "2000  so'm", "5 min" ,"2 ta"),
    Drink("assets/tea/tsutli.png", "COFFE SUTLI", "2000  so'm", "5 min" ,"3 ta"),
    Drink("assets/tea/tcop.png", "COPUCHINO", "5000  so'm", "5 min" ,"3 ta"),



  ];




}