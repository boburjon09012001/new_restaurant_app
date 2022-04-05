import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_restaurant/recipe/recipe_burger.dart';

import 'carusel_page_details.dart';


class CaruselPage extends StatefulWidget {
 CaruselPage({Key? key}) : super(key: key);
 @override
  _CaruselPageState createState() => _CaruselPageState();
}

final List <String> imageList = [
  "assets/carusel/burnew1.png",
  "assets/carusel/burnew2.png",
  "assets/carusel/burnew3.png",
  "assets/carusel/burnew4.png",
  "assets/carusel/burnew5.png",
  "assets/carusel/burnew6.png",
  "assets/carusel/burnew7.png",
  "assets/carusel/burnew8.png",
  "assets/carusel/burnew9.png",
  "assets/carusel/lavnew1.png",
  "assets/carusel/lavnew2.png",
  "assets/carusel/lavnew3.png",
  "assets/carusel/lavnew4.png",
  "assets/carusel/pizzanew1.png",
  "assets/carusel/pizzanew2.png",
  "assets/carusel/pizzanew3.png",
  "assets/carusel/pizzanew4.png",
];

int selectedItemIndex = 0;
class _CaruselPageState extends State<CaruselPage> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    // var orientation = mediaQueryData.orientation;
    return Scaffold(

      body: Container(
        decoration:const  BoxDecoration(
          image:  DecorationImage(image:  AssetImage("assets/burger/background.png"), fit: BoxFit.cover,),
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      color:  Color(0xFFEDF7FF),
                      height: 120.0,
                      width: double.infinity,
                      margin: EdgeInsets.all(10.0),
                      child: Card(
                        elevation: 10.0,
                        child: Image.asset(
                          "assets/images/logo.png",
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 140.0),
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        height: size.height * 0.07,
                        child:const Text(
                          "Salom , Hush kelibsiz!",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 170.0),
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        height: size.height * 0.06,
                        child:const Text(
                          "Nima buyurtirishni hohlaysiz?",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        )),


                    Container(
                      margin: EdgeInsets.only(top: 220.0),
                      child: CarouselSlider.builder(
                        itemCount: imageList.length,
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          height: 240,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          reverse: false,
                          aspectRatio: 5.0,
                        ),
                        itemBuilder: (context, i, id){
                          //for onTap to redirect to another screen
                          return GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // border: Border.all(color: Colors.blueGrey,)
                              ),
                              //ClipRRect for image border radius
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  imageList[i],
                                  width: 500,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: (){
                              var url = imageList[i];
                              print(url.toString());
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 470.0),
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        height: size.height * 0.07,
                        child:const Text(
                          "Burger & Donar",
                          style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        )),

                    Container(
                      margin:EdgeInsets.only(top: 510.0 ),
                      height: 200.0,
                      child: GridView.count(

                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        children: [

                          myContainer(Recipe.infor[0],context),
                          myContainer(Recipe.infor[1],context),
                          myContainer(Recipe.infor[2],context),
                          myContainer(Recipe.infor[3],context),
                          myContainer(Recipe.infor[4],context),
                          myContainer(Recipe.infor[5],context),
                          myContainer(Recipe.infor[6],context),
                          myContainer(Recipe.infor[7],context),





                        ],
                      ),
                    ),






                    Container(
                        margin: EdgeInsets.only(top: 710.0),
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        height: size.height * 0.07,
                        child:const Text(
                          "Sendvich & Lavash & Hotdog",
                          style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Container(

                      margin:EdgeInsets.only(top: 750.0 ),
                      height: 200.0,

                      child: GridView.count(

                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        children: [
                          // myWidget(Recipe.mylist[6],context),
                          myWidget(Recipe.infor_2[0],context),
                          myWidget(Recipe.infor_2[1],context),
                          myWidget(Recipe.infor_2[2],context),
                          myWidget(Recipe.infor_2[3],context),
                          myWidget(Recipe.infor_2[4],context),
                          myWidget(Recipe.infor_2[5],context),
                          myWidget(Recipe.infor_2[6],context),
                          myWidget(Recipe.infor_2[7],context),
                          myWidget(Recipe.infor_2[8],context),
                          myWidget(Recipe.infor_2[9],context),
                          myWidget(Recipe.infor_2[10],context),
                          myWidget(Recipe.infor_2[11],context),






                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 950.0),
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        height: size.height * 0.07,
                        child:const Text(
                          "Pizza & Laxmajun & Pide",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),

                    Container(

                      margin:EdgeInsets.only(top: 990.0 ),
                      height: 200.0,

                      child: GridView.count(

                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        children: [

                          myPizza(Recipe.infor_3[0],context),
                          myPizza(Recipe.infor_3[1],context),
                          myPizza(Recipe.infor_3[2],context),
                          myPizza(Recipe.infor_3[3],context),
                          myPizza(Recipe.infor_3[4],context),
                          myPizza(Recipe.infor_3[5],context),
                          myPizza(Recipe.infor_3[6],context),
                          myPizza(Recipe.infor_3[7],context),
                          myPizza(Recipe.infor_3[8],context),
                          myPizza(Recipe.infor_3[9],context),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


 Widget  coruselContainer(String _imageList, int index){

    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Colors.white,)
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: Image.asset(_imageList),
      ),
    );
 }



 Widget  myContainer( Recipe recipe,context ){
    return  InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  CallingPage() ));
      },
      child: Container(
        width: 260.0,
        height: 360.0,

        child: Card(
          color: Color(0xFFEDF5FF),
          shape: RoundedRectangleBorder(
            side:const BorderSide(color: Colors.white70, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          // color: Color(0xFFEDF7FF),
          elevation: 8.0,
          margin: EdgeInsets.all(8.0) ,
          child: Container(
            margin:const EdgeInsets.only(  top: 4, left: 0.0 ,right:0.0,bottom: 14.0),
            height: 360.0,
            width: 260.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child:   Image.asset(recipe.imgURL ,width: 160.0, height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),

                Text(recipe.name ,  style:const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,

                ),),
             const   SizedBox(height: 2.0,),
                Text(recipe.cost,style:const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.orange

                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget  myWidget( Recipe recipe,context ){
    return  InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  CallingPage() ));

      },
      child: Container(
        width: 260.0,
        height: 360.0,
        child: Card(
          color: Color(0xFFEDF5FF),
          shape: RoundedRectangleBorder(
            side:const BorderSide(color: Colors.white70, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          // color: Color(0xFFEDF7FF),
          elevation: 8.0,
          margin: EdgeInsets.all(8.0) ,
          child: Container(
            margin:const EdgeInsets.only(top: 4, left: 0.0 ,right:0.0,bottom: 14.0),
            height: 360.0,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:   Image.asset(recipe.imgURL ,width: 160.0, height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),

                Text(recipe.name ,  style:const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,

                ),),
                const   SizedBox(height: 2.0,),
                Text(recipe.cost,style:const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.orange

                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget  myPizza( Recipe recipe,context ){
    return  InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  CallingPage() ));

      },
      child: Container(
        width: 260.0,
        height: 360.0,
        child: Card(
          color: Color(0xFFEDF5FF),
          shape: RoundedRectangleBorder(
            side:const BorderSide(color: Colors.white70, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          // color: Color(0xFFEDF7FF),
          elevation: 8.0,
          margin: EdgeInsets.all(8.0) ,
          child: Container(
            margin:const EdgeInsets.only( top: 4,left: 0.0 ,right:0.0,bottom: 14.0),
            height: 360.0,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:   Image.asset(recipe.imgURL ,width: 160.0, height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),

                Text(recipe.name ,  style:const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,

                ),),
                const   SizedBox(height: 2.0,),
                Text(recipe.cost,style:const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.orange

                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }





}
