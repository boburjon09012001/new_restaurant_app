class DrinkAPI{
  String imgURL;
  String info;
  String name;
  String cost;
  String time;
  String ing;

  DrinkAPI(this.imgURL, this.info, this.name, this.cost, this.time, this.ing);


  static List<DrinkAPI> forDrinksApi = [
    DrinkAPI("assets/tea/tea1.png", "Koʻk choy — choy oʻsimligining pishib \nyetilmagan yosh barglaridan tayyorla-\nnadigan choy. Tabiiy rangi hidini saq-\nlaydi" ,"CHOY" ,"2000 so'm" , "2 min" ,"1 ta"),
    DrinkAPI("assets/tea/tlemon.png"," Ma'lumki, Limon choyi juda ko'p\nfoydali xususiyatlarga ega, ammo \nba'zi kasalliklar ichida undan \nfoydalanish yaxshidir." ,"LIMON CHOY","5000  so'm", "3 min" ,"2 ta" ),
    DrinkAPI("assets/tea/tasal.png", "Choyga qo'shilishning eng yaxshi \nvarianti odatdagi asaldir. Uning \ntarkibida zanjabil va limonda mavjud \nbo'lgan ko'plab foydali moddalar \nmavjud, ular quyida muhokama qilinadi.","ASAL CHOY", "3000  so'm", "3 min" ,"1 ta"),
    DrinkAPI("assets/tea/tbardak.png", "Turkiya, har doim mustahkam turkiy \nqahvaxonasi va kuchli qora choyi \nbilan mashhur" ,"BARDAK CHOY", "5000  so'm", "5 min" ,"3 ta"),
    DrinkAPI("assets/tea/tqora.png", "Kofe loviya navlari mavjudligi xilma-\nxilligi bilan hayratda qoldiradi, \nammo ta'mi fazilatlari va tabiiy \nqora kofe hidi, asosan pishirishning\ndon va texnologik xususiyatlari bilan\nbelgilanadi." ,"COFFE QORA", "2000  so'm", "5 min" ,"2 ta"),
    DrinkAPI("assets/tea/tsutli.png","Kesilganga o'xshab, sutli kofe sutni \nkofe tarkibiga qo'shilishini taxmin \nqiladi"  ,"COFFE SUTLI", "2000  so'm", "5 min" ,"3 ta"),
    DrinkAPI("assets/tea/tcop.png","Kappuchino - bu eng keng tarqalgan \nqahvalardan biri, bu sut bilan qahvaga\no'xshash, bundan mustasno, bu holda \nbiz kofening atigi uchdan bir \nqismini topamiz, qolgan qismi sut.","COPUCHINO", "5000  so'm", "5 min" ,"3 ta"),



  ];




}