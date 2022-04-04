import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_restaurant/menu/carusel_page_details.dart';
import '../recipe/recipe_burger.dart';

class FavoritePage extends StatefulWidget {
  FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF193A53),
          title:const Text("Eng sevimlilar"),
        ),
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/burger/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext, context){
           return  InkWell(
             onTap: (){
               setState(() {
                 Navigator.push(BuildContext, MaterialPageRoute(builder: (context)=>CallingPage()));

               });
             },
             child: Column(
               children: [
                 myCardExtands(Recipe.infor[0],context),
                 myCardExtands(Recipe.infor[2],context),
                 myCardExtands(Recipe.infor[4],context),
                 myCardExtands(Recipe.infor[5],context),
                 myCardExtands(Recipe.infor[7],context),
                 myCardExtands(Recipe.infor_2[0],context),
                 myCardExtands(Recipe.infor_2[2],context),
                 myCardExtands(Recipe.infor_2[3],context),
                 myCardExtands(Recipe.infor_2[5],context),
                 myCardExtands(Recipe.infor_2[8],context),
                 myCardExtands(Recipe.infor_2[9],context),
                 myCardExtands(Recipe.infor_3[0],context),
                 myCardExtands(Recipe.infor_3[1],context),
                 myCardExtands(Recipe.infor_3[3],context),
                 myCardExtands(Recipe.infor_3[7],context),
                 myCardExtands(Recipe.infor_3[9],context),

               ],
             ),
           );
        }),
      )

    );


  }

  Widget  myCardExtands(Recipe recipe , context){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.all(10.0),
      elevation: 10.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xFFEDF5FF),
        ),

        height: 160.0,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16.0),
              width: 160.0,
              height: 120.0,
              child:   ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child:   Image.asset(recipe.imgURL,
                    height: 140.0,
                    width: 140.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ),
         const   SizedBox(
              width: 14.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(

                    children: [
                      Text(recipe.name, style:const TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF193A53),

                      ),),
                    ],
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  SizedBox(
                    height: 40.0,
                    child: Row(
                      children: [
                        Text(recipe.ing,
                          style:const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,

                          ),),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(recipe.cost, style:const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange
                      ),),
                    ],
                  ),


                  SizedBox(
                    height: 4.0,
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text("Buyurtma berish", style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,

                        ),),

                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.indigo,
                        ),


                      ],
                    ),
                  ),



                ],
              ),
            ),


          ],
        ),
      ),
    );
  }

}
