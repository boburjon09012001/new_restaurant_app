import 'dart:io';
import 'package:flutter/material.dart';
import 'package:new_restaurant/information/details_page_a.dart';
import 'package:new_restaurant/information/details_page_b.dart';
import 'package:new_restaurant/information/details_page_c.dart';
import 'package:new_restaurant/information/details_page_d.dart';
import 'package:new_restaurant/information/details_page_e.dart';
import 'package:new_restaurant/information/details_page_f.dart';


class BurgerMenu extends StatefulWidget {
  BurgerMenu({Key? key}) : super(key: key);

  get index => 0;

  @override
  _BurgerMenuState createState() => _BurgerMenuState();
}



class _BurgerMenuState extends State<BurgerMenu> {

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
              return mainUI(constraints);
            },
          ),
        ),

      ),
    );
  }

   Widget mainUI(BoxConstraints  constraints){

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

      height: 1000.0,
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/burger/background.png"),
          fit: BoxFit.cover,
        ),

      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
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
                        SizedBox(
                          height: 60.0,
                        ),
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
                               color:  Color(0xFFF2DFE1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 2.0,
                                        height: 22.0,
                                        color: Color(0xFF00195C),
                                      ),
                                      SizedBox(width: 4.0),
                                 const     Text(
                                        "Sevimli",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                          color: Color(0xFF1E2022),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                             const     Text("GAMBURGER",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:const[
                                      Text(
                                        "Narxi :",
                                        style: TextStyle(
                                            fontSize: 17.0, fontWeight: FontWeight.bold),
                                      ),
                                      Text("12000 so'm",
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.indigo)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image.asset(
                                        "assets/image_burger/vaqt1.png",
                                        height: 14.0,
                                        color: Colors.black,
                                      ),
                                      Text("12 min",
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Image.asset(
                                        "assets/image_burger/tarkibi1.png",
                                        height: 20.0,
                                        color: Colors.black,
                                      ),
                                      Text("4 ta",
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 50.0,
                                        height: 50.0,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Color(0xFFC7C5D1),

                                        ),
                                        child:const Icon(
                                          Icons.add_circle_outline,
                                          color:  Color(0xFF175B8F),
                                        ),
                                      ),
                                      Container(
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                              backgroundColor: MaterialStateProperty.all<Color>(
                                                Color(0xFF175B8F),
                                              ),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(8.0),
                                                    side: BorderSide(
                                                      color: Color(0xFF175B8F),
                                                    ),
                                                  ))),
                                          onPressed: () {
                                            setState(() {
                                              _isItemSelected = true;
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage() ));
                                            });
                                          },
                                          child: Text("Ma'lumotlar"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: -80,
                          child: Image.asset(
                            "assets/image_burger/b1.png",
                            width: 240.0,
                            height: 250.0,
                          ),
                        ),
                      ],
                    ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 60.0,
                          ),
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
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 2.0,
                                          height: 22.0,
                                          color: Color(0xFF00195C),
                                        ),
                                        SizedBox(width: 4.0),
                                 const       Text(
                                          "Sevimli",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                            color: Color(0xFF1E2022),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                             const       Text("BIGBURGER",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:     const    [
                                     Text(
                                          "Narxi :",
                                          style: TextStyle(
                                              fontSize: 17.0, fontWeight: FontWeight.bold),
                                        ),
                                        Text("20000 so'm",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),
                                        const             Text("15 min",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold)),
                                        const         SizedBox(
                                          width: 6.0,
                                        ),
                                        Image.asset(
                                          "assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),
                                        const  Text("6 ta",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Color(0xFFC7C5D1),
                                          ),
                                          child: const Icon(
                                            Icons.add_circle_outline,
                                            color: Color(0xFF175B8F),
                                          ),
                                        ),
                                        Container(
                                          height: 50.0,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(
                                                    Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFF175B8F),
                                                ),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side: const BorderSide(
                                                        color: Color(0xFF175B8F),
                                                      ),
                                                    ))),
                                            onPressed: () {
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage2()));
                                              });
                                            },
                                            child: Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: -80,
                            child: Image.asset(
                              "assets/image_burger/b2.png",
                              width: 240.0,
                              height: 250.0,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 60.0,
                          ),
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
                                 color:   Color(0xFFFFC5A8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 2.0,
                                          height: 22.0,
                                          color: Color(0xFF00195C),
                                        ),
                                        SizedBox(width: 4.0),
                                        const   Text(
                                          "Sevimli",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                            color: Color(0xFF1E2022),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    const       Text("CHIZBURGER ZAKAS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  const[
                                               Text(
                                          "Narxi :",
                                          style: TextStyle(
                                              fontSize: 17.0, fontWeight: FontWeight.bold),
                                        ),
                                        Text("20000 so'm",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),
                                        const     Text("17 min",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold)),
                                        const      SizedBox(
                                          width: 6.0,
                                        ),
                                            Image.asset(
                                          "assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),
                                        const    Text("6 ta",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                    const  SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Color(0xFFC7C5D1),
                                          ),
                                          child: const Icon(
                                            Icons.add_circle_outline,
                                            color: Color(0xFF175B8F),
                                          ),
                                        ),
                                        Container(
                                          height: 50.0,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(
                                                    Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFF175B8F),
                                                ),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side: const BorderSide(
                                                        color:  Color(0xFF175B8F),
                                                      ),
                                                    ))),
                                            onPressed: () {
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage3()));

                                              });
                                            },
                                            child: Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: -80,
                            child: Image.asset(
                              "assets/image_burger/b3.png",
                              width: 240.0,
                              height: 250.0,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          const  SizedBox(
                            height: 60.0,
                          ),
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
                                color:  Color(0xFF71C3A1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const  SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 2.0,
                                          height: 22.0,
                                          color: Color(0xFF00195C),
                                        ),
                                        SizedBox(width: 4.0),
                                        const Text(
                                          "Sevimli",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                            color: Color(0xFF1E2022),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const  SizedBox(
                                      height: 16.0,
                                    ),
                                    const   Text("CHIZBURGER ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    const  SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  const[
                                        Text(
                                          "Narxi :",
                                          style: TextStyle(
                                              fontSize: 17.0, fontWeight: FontWeight.bold),
                                        ),
                                         Text("17000 so'm",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),
                                        const  Text("20 min",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold)),
                                        const   SizedBox(
                                          width: 6.0,
                                        ),
                                        Image.asset(
                                          "assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),
                                        const Text("5 ta",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Color(0xFFC7C5D1),
                                          ),
                                          child: const Icon(
                                            Icons.add_circle_outline,
                                            color: Color(0xFF175B8F),
                                          ),
                                        ),
                                        Container(
                                          height: 50.0,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(
                                                    Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFF175B8F),
                                                ),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side: const BorderSide(
                                                        color: Color(0xFF175B8F),
                                                      ),
                                                    ))),
                                            onPressed: () {
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage4()));

                                              });
                                            },
                                            child: Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: -80,
                            child: Image.asset(
                              "assets/image_burger/b4.png",
                              width: 240.0,
                              height: 250.0,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          const        SizedBox(
                            height: 60.0,
                          ),
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
                                 color:  Color(0xFFA8B6FF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const      SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 2.0,
                                          height: 22.0,
                                          color: Color(0xFF00195C),
                                        ),
                                        SizedBox(width: 4.0),
                                        const           Text(
                                          "Sevimli",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                            color: Color(0xFF1E2022),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const       SizedBox(
                                      height: 16.0,
                                    ),
                                    const        Text("BURGER KING ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    const  SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  const[
                                               Text(
                                          "Narxi :",
                                          style: TextStyle(
                                              fontSize: 17.0, fontWeight: FontWeight.bold),
                                        ),
                                            Text("18000 so'm",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo)),
                                      ],
                                    ),
                                    const  SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),
                                        const        Text("15 min",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold)),
                                        const   SizedBox(
                                          width: 6.0,
                                        ),
                                        Image.asset(
                                          "assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),
                                        const    Text("4 ta",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Color(0xFFC7C5D1),
                                          ),
                                          child: const Icon(
                                            Icons.add_circle_outline,
                                            color: Color(0xFF175B8F),
                                          ),
                                        ),
                                        Container(
                                          height: 50.0,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(
                                                    Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFF175B8F),
                                                ),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side: BorderSide(
                                                        color: Color(0xFF175B8F),
                                                      ),
                                                    ))),
                                            onPressed: () {
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage5()));

                                              });
                                            },
                                            child: Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: -80,
                            child: Image.asset(
                              "assets/image_burger/b5.png",
                              width: 240.0,
                              height: 250.0,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 60.0,
                          ),
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
                                color:  Color(0xFFFFE7A8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 2.0,
                                          height: 22.0,
                                          color: Color(0xFF00195C),
                                        ),
                                        SizedBox(width: 4.0),
                                        const  Text(
                                          "Sevimli",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                            color: Color(0xFF1E2022),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    const   Text("GAMBURGER ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  const[
                                           Text(
                                          "Narxi :",
                                          style: TextStyle(
                                              fontSize: 17.0, fontWeight: FontWeight.bold),
                                        ),
                                           Text("12000 so'm",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/image_burger/vaqt1.png",
                                          height: 14.0,
                                          color: Colors.black,
                                        ),
                                        const     Text("10 min",
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 6.0,
                                        ),
                                        Image.asset(
                                          "assets/image_burger/tarkibi1.png",
                                          height: 20.0,
                                          color: Colors.black,
                                        ),
                                        Text("3 ta",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                    const      SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Color(0xFFC7C5D1),
                                          ),
                                          child: const Icon(
                                            Icons.add_circle_outline,
                                            color: Color(0xFF175B8F),
                                          ),
                                        ),
                                        Container(
                                          height: 50.0,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(
                                                    Colors.white70),
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color(0xFF175B8F),
                                                ),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      side: const BorderSide(
                                                        color: Color(0xFF175B8F),
                                                      ),
                                                    ))),
                                            onPressed: () {
                                              setState(() {
                                                _isItemSelected = true;
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailsPage6()));

                                              });
                                            },
                                            child: Text("Ma'lumotlar"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: -120,
                            child: Image.asset(
                              "assets/image_burger/b6.png",
                              width: 320.0,
                              height: 280.0
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
