import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:new_restaurant/recipe/recipe_burger.dart';


class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xFFedf6ff),
     appBar: PreferredSize(
       preferredSize:
       Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
       child:const SafeArea(
         top: true,
         child: Offstage(),
       ),
     ),
     body: customScroll(),
   );
  }



  Widget customScroll(){
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverAppBar(
          shape:const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
          pinned: false,
          expandedHeight: 250.0,
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(
            background:
            ClipRRect(
              borderRadius: BorderRadius.only( bottomLeft:Radius.circular(24.0), bottomRight:Radius.circular(24.0)), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(48), // Image radius
                child:   Image.asset('assets/carusel/burnew2.png',
                  height: 60.0,
                  width: 125.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Eng sevimlilar", style: TextStyle( fontSize: 19.0 ,color: Colors.white70 ),),
          ),
        ),
        SliverFixedExtentList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(

                child: Stack(
                  children: [
                    Card(
                      margin: EdgeInsets.all(14.0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          myFavoriteCard(Recipe.infor[0] ,context),
                          myFavoriteCard(Recipe.infor[1] ,context),
                          myFavoriteCard(Recipe.infor[2] ,context),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }, childCount: 3 ),
            itemExtent: 180.0),

      ],
    );
  }
  Widget myFavoriteCard(Recipe recipe ,context){
    return   Center(
      child: Row(
        children: [
          Container(
            margin : EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFFedf6ff),
            ),
            child:
            ClipRRect(
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
            height: 120.0,
            width: 120.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                  children:[
                    Text("Gamburger" , style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w600,

                    ),),
                  ],
                ),
                const    SizedBox(
                  height: 3.0,
                ),
                SizedBox(
                  height: 36.0,
                  child: Row(
                    children:const [
                      Text("Mol go'shti,pomidor,\nko'kat,pishloq   "  , style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,

                      ),),
                    ],
                  ),
                ),
                const  SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Text("20000 so'm"  , style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color:Colors.orange
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
                    children:const [

                      Text("Buyurtma berish"  , style: TextStyle(
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
    );

  }



}
