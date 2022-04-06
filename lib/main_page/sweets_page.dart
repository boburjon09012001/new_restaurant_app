import 'dart:io';
import 'package:flutter/material.dart';
import 'package:new_restaurant/information/details_sweets_a.dart';
import 'package:new_restaurant/information/details_sweets_b.dart';
import 'package:new_restaurant/information/details_sweets_c.dart';
import 'package:new_restaurant/information/details_sweets_d.dart';

import '../route/page_route.dart';

class SweetsPage extends StatefulWidget {
  const SweetsPage({Key? key}) : super(key: key);

  @override
  _SweetsPageState createState() => _SweetsPageState();
}

class _SweetsPageState extends State<SweetsPage> {


  bool _isItemSelected = true;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _isItemSelected ?
        setState(() {
          _isItemSelected = true;
        })  : exit(0);
        return Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF183952),
          body:  LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              return nextUI(constraints);
            },
          ),
        ),

      ),
    );
  }


  Widget nextUI(BoxConstraints  constraints){
    print("CURRENT_WIDTH : ${constraints.maxWidth}");
    var axisCount = 1;
    var current = constraints.maxWidth;
    if(current <= 500){
      axisCount =1;
    }
    else  if(current > 500 && current <= 690 ){
      axisCount =3;
    }
    else  if(current > 690 && current >= 1024 ){
      axisCount =4;
    }
    else {
      axisCount =5;
    }
    return Container(
      height:1000.0,
      decoration:const  BoxDecoration(
        image:  DecorationImage(image:  AssetImage("assets/burger/background.png"), fit: BoxFit.cover,),
      ),

      margin: EdgeInsets.all(0.0),
      child: Column(
        children: [

          SizedBox(height: 20.0,),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: axisCount,
                itemBuilder: (BuildContext context,int index){
                  return Column(
                    children:[
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          const     SizedBox(height: 60.0,),
                          Card(
                            margin: EdgeInsets.only(top: 40.0),
                            elevation: 48.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 300.0,
                              width: 230.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2DFE1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const       SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [ Container(
                                        width: 2.0,
                                        height: 22.0,
                                        color: Color(0xFF00195C),
                                      ),
                                        const    SizedBox(width: 4.0 ),
                                        const   Text("Noyob tamli" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,  color: Color(0xFF1E2022), ) , ),],
                                    ),
                                    const    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        Text( "LADUREE",style: TextStyle(
                                          fontWeight: FontWeight.bold ,
                                          fontSize: 18.0,
                                          color: Colors.indigo,
                                        ),
                                        ),
                                      ],
                                    ),
                                    const   SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Narxi :" ,style: TextStyle( fontSize: 17.0 ,fontWeight: FontWeight.bold ),),
                                        Text("3000 so'm",style: TextStyle(
                                            color: Colors.indigo,
                                            fontSize: 17.0 ,
                                            fontWeight: FontWeight.bold )),
                                      ],
                                    ),
                                    const    SizedBox(height: 8.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset("assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),

                                        Text("5 min",style:
                                        TextStyle( fontSize: 17.0 ,  color: Colors.indigo,  fontWeight: FontWeight.bold )),

                                        SizedBox(width: 6.0,),
                                        Image.asset("assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),

                                        Text("3 ta",style:
                                        TextStyle( fontSize: 17.0 , )),
                                      ],
                                    ),
                                    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color:const Color(0xFFC7C5D1),
                                          ),
                                          child:const Icon(Icons.add_circle_outline , color: Color(0xFF175B8F), ),
                                        ),

                                        Container(
                                          height: 50.0,

                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(  Color(0xFF175B8F),),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side:const BorderSide(  color:Color(0xFF175B8F),),
                                                    )
                                                )
                                            ),

                                            onPressed: (){
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.of(context).push(createRoute(DetailsPageSweets()));

                                              });
                                            },
                                            child:const Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Positioned(
                              top:40,
                              right: 0,
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child:    Image.asset("assets/sweets/shirin.png",
                                  width: 100.0,
                                  height: 90.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          const     SizedBox(height: 60.0,),
                          Card(
                            margin: EdgeInsets.only(top: 40.0),
                            elevation: 48.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 300.0,
                              width: 230.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFDCC7B1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const       SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [ Container(
                                        width: 2.0,
                                        height: 22.0,
                                        color: Color(0xFF00195C),
                                      ),
                                        const    SizedBox(width: 4.0 ),
                                        const   Text("Noyob tamli" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,  color: Color(0xFF1E2022), ) , ),],
                                    ),
                                    const    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        Text( "MEDOVIK",style: TextStyle(
                                          fontWeight: FontWeight.bold ,
                                          fontSize: 18.0,
                                          color: Colors.indigo,
                                        ),
                                        ),
                                      ],
                                    ),
                                    const   SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Narxi :" ,style: TextStyle( fontSize: 17.0 ,fontWeight: FontWeight.bold ),),
                                        Text("10000 so'm",style: TextStyle(
                                            color: Colors.indigo,
                                            fontSize: 17.0 ,
                                            fontWeight: FontWeight.bold )),
                                      ],
                                    ),
                                    const    SizedBox(height: 8.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset("assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),

                                        Text("7 min",style:
                                        TextStyle( fontSize: 17.0 ,  color: Colors.indigo,  fontWeight: FontWeight.bold )),

                                        SizedBox(width: 6.0,),
                                        Image.asset("assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),

                                        Text("2 ta",style:
                                        TextStyle( fontSize: 17.0 , )),
                                      ],
                                    ),
                                    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color:const Color(0xFFC7C5D1),
                                          ),
                                          child:const Icon(Icons.add_circle_outline , color: Color(0xFF175B8F), ),
                                        ),

                                        Container(
                                          height: 50.0,

                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(  Color(0xFF175B8F),),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side:const BorderSide(  color:Color(0xFF175B8F),),
                                                    )
                                                )
                                            ),

                                            onPressed: (){
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.of(context).push(createRoute(DetailsPageSweets2()));

                                              });
                                            },
                                            child:const Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Positioned(
                              top: 40,
                              right: 0,
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child:    Image.asset("assets/sweets/tort1.png",
                                  width: 100.0,
                                  height: 90.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          const     SizedBox(height: 60.0,),
                          Card(
                            margin: EdgeInsets.only(top: 40.0),
                            elevation: 48.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 300.0,
                              width: 230.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFC5A8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const       SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [ Container(
                                        width: 2.0,
                                        height: 22.0,
                                        color: Color(0xFF00195C),
                                      ),
                                        const    SizedBox(width: 4.0 ),
                                        const   Text("Noyob tamli" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,  color: Color(0xFF1E2022), ) , ),],
                                    ),
                                    const    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children:const [
                                        Text( "TIVAROGLI PIROG",style: TextStyle(
                                          fontWeight: FontWeight.bold ,
                                          fontSize: 18.0,
                                          color: Colors.indigo,
                                        ),
                                        ),
                                      ],
                                    ),
                                    const   SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const[
                                        Text("Narxi :" ,style: TextStyle( fontSize: 17.0 ,fontWeight: FontWeight.bold ),),
                                        Text("5000",style: TextStyle(
                                            color: Colors.indigo,
                                            fontSize: 17.0 ,
                                            fontWeight: FontWeight.bold )),
                                      ],
                                    ),
                                    const    SizedBox(height: 8.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset("assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),

                                        Text("5 min",style:
                                        TextStyle( fontSize: 17.0 ,  color: Colors.indigo,  fontWeight: FontWeight.bold )),

                                        SizedBox(width: 6.0,),
                                        Image.asset("assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),

                                        Text("1 ta",style:
                                        TextStyle( fontSize: 17.0 , )),
                                      ],
                                    ),
                                    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color:const Color(0xFFC7C5D1),
                                          ),
                                          child:const Icon(Icons.add_circle_outline , color: Color(0xFF175B8F), ),
                                        ),

                                        Container(
                                          height: 50.0,

                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(  Color(0xFF175B8F),),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side:const BorderSide(  color:Color(0xFF175B8F),),
                                                    )
                                                )
                                            ),

                                            onPressed: (){
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.of(context).push(createRoute(DetailsPageSweets3()));

                                              });
                                            },
                                            child:const Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Positioned(
                              top: 40,
                              right: 0,
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child:    Image.asset("assets/sweets/t2.png",
                                  width: 100.0,
                                  height: 90.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          const     SizedBox(height: 60.0,),
                          Card(
                            margin: EdgeInsets.only(top: 40.0 ,bottom: 40.0),
                            elevation: 48.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 300.0,
                              width: 230.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF71C3A1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const       SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [ Container(
                                        width: 2.0,
                                        height: 22.0,
                                        color: Color(0xFF00195C),
                                      ),
                                        const    SizedBox(width: 4.0 ),
                                        const   Text("Noyob tamli" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,  color: Color(0xFF1E2022), ) , ),],
                                    ),
                                    const    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        Text( "QULUPNAYLI PIROG",style: TextStyle(
                                          fontWeight: FontWeight.bold ,
                                          fontSize: 18.0,
                                          color: Colors.indigo,
                                        ),
                                        ),
                                      ],
                                    ),
                                    const   SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Narxi :" ,style: TextStyle( fontSize: 17.0 ,fontWeight: FontWeight.bold ),),
                                        Text("15000 so'm",style: TextStyle(
                                            color: Colors.indigo,
                                            fontSize: 17.0 ,
                                            fontWeight: FontWeight.bold )),
                                      ],
                                    ),
                                    const    SizedBox(height: 8.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset("assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),

                                        Text("10 min",style:
                                        TextStyle( fontSize: 17.0 ,  color: Colors.indigo,  fontWeight: FontWeight.bold )),

                                        SizedBox(width: 6.0,),
                                        Image.asset("assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),

                                        Text("6 ta",style:
                                        TextStyle( fontSize: 17.0 , )),
                                      ],
                                    ),
                                    SizedBox(height: 16.0,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color:const Color(0xFFC7C5D1),
                                          ),
                                          child:const Icon(Icons.add_circle_outline , color: Color(0xFF175B8F), ),
                                        ),

                                        Container(
                                          height: 50.0,

                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(  Color(0xFF175B8F),),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side:const BorderSide(  color:Color(0xFF175B8F),),
                                                    )
                                                )
                                            ),

                                            onPressed: (){
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.of(context).push(createRoute(DetailsPageSweets4()));

                                              });
                                            },
                                            child:const Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Positioned(
                              top: 40,
                              right: 0,
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child:    Image.asset("assets/sweets/t3.png",
                                  width: 100.0,
                                  height: 90.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  );
                }

            ),
          ),
        ],
      ),
    );
  }

}
