import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:new_restaurant/page_view_indicator/first_page.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      // body: MenuPage(),
     body: Container(child:

          FirstPage(),

     // MyStatefulWidget(),
       decoration:  BoxDecoration(
         image:  DecorationImage(image:  AssetImage("assets/burger/background.png"), fit: BoxFit.cover,),
       ),

     ),
    );
  }
}
