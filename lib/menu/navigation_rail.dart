import 'package:flutter/material.dart';
import 'package:new_restaurant/bottom_navigation_page/favorite_page.dart';
import 'package:new_restaurant/information/details_page_a.dart';
import 'package:new_restaurant/main_page/drinks_page.dart';
import 'package:new_restaurant/main_page/sweets_page.dart';
import 'package:new_restaurant/menu/carusel_page.dart';
// import 'package:new_restaurant/main_page/menu_page_first.dart';

import '../main_page/burger.dart';
import '../main_page/pizza_page.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 2;
  final List<Widget> _mainContents = [
    CaruselPage(),
    FavoritePage(),
    BurgerMenu(),
    PizzaPage(),
    SweetsPage(),
    DrinksPage(),
    // DetailsPage(),


  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            LayoutBuilder(builder: (context, constraint){
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:  BoxConstraints(minHeight:constraint.maxHeight),
                  child: IntrinsicHeight(
                    child:  NavigationRail(
                      minWidth: 54.0,
                      backgroundColor:  Color(0xFF175B8F),
                      groupAlignment: 0.0,
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: (int index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      unselectedLabelTextStyle: const TextStyle(
                        color: Colors.white54,
                        fontSize: 15.0,
                      ),
                      selectedLabelTextStyle: const TextStyle(
                        color: Colors.white70,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      labelType: NavigationRailLabelType.all,
                      destinations: [
                        NavigationRailDestination(
                          icon:
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => CaruselPage()));
                            },
                            child:const Icon(
                              Icons.home,
                              size: 29.0,
                              color: Colors.white,
                            ),
                          ),

                          selectedIcon:  InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => CaruselPage()));
                            },
                            child: Icon(
                              Icons.home,
                              size: 29.0,
                              color: Colors.white,
                            ),
                          ),
                          label: Text("Home"),

                        ),
                        NavigationRailDestination(
                          icon:
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FavoritePage(),));

                            },
                            child: Icon(
                              Icons.favorite_outline,
                              size: 29.0,
                              color: Colors.white54,
                            ),
                          ),


                          selectedIcon:InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FavoritePage(),));

                            },
                            child: Icon(
                              Icons.favorite_outline,
                              size: 29.0,
                              color: Colors.white70,
                            ),
                          ),
                          label: Text("Love"),

                        ),
                        const    NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Burger",
                              ),
                            ),
                          ),
                        ),
                        const         NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text("Pizza"),
                            ),
                          ),
                        ),
                        const       NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text("Shirinlik"),
                            ),
                          ),
                        ),
                        const         NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text("Ichimlik"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              );
            }


            ),


            Expanded(child: _mainContents[_selectedIndex]),
          const  VerticalDivider(thickness: 1, width: 1),

          ],
        ),
      ),
    );
  }



}
