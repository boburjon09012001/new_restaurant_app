class SweetsAPI{
  String imgURL;
  String info;
  String name;
  String cost;
  String time;
  String ing;



  SweetsAPI(this.imgURL, this.info,this.name, this.cost, this.time, this.ing);


  static List<SweetsAPI> forSweetsApi = [
    SweetsAPI("assets/sweets/shirin.png","Ommabop e'tiqoddan farqli o'laroq, \nshirinliklar to'yimli ovqatlanish-\nning ajralmas qismidir. ","LADUREE" ,"3000 so'm" , "5 min" ,"3 ta"),
    SweetsAPI("assets/sweets/tort1.png","Ommabop e'tiqoddan farqli o'laroq, \nshirinliklar to'yimli ovqatlanish-\nning ajralmas qismidir. " ,"MEDOVIK","10000  so'm", "7 min" ,"3 ta" ),
    SweetsAPI("assets/sweets/t2.png", "Ommabop e'tiqoddan farqli o'laroq, \nshirinliklar to'yimli ovqatlanish-\nning ajralmas qismidir. ","TIVAROGLI PIROG", "5000  so'm", "5 min" ,"4 ta"),
    SweetsAPI("assets/sweets/t3.png", "Ommabop e'tiqoddan farqli o'laroq, \nshirinliklar to'yimli ovqatlanish-\nning ajralmas qismidir. ","QULUPNAYLI PIROG", "15000  so'm", "10 min" ,"5 ta"),



  ];




}