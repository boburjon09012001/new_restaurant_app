import 'package:flutter/material.dart';
import 'package:new_restaurant/menu/navigation_rail.dart';
import '../route/page_route.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}


class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    return Scaffold(
      body: Column(
          children: [
            Container(
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                 color: Color(0xFF1D415E),

              ),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Image.asset("assets/burger/1backburger.png",
                fit: BoxFit.cover,),
              ),
              height: size.height * 0.55,

            ),
            Row(
              children:const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Assalomu aleykum "
                  "\nBurger va Lavash markazimizga"
                      " \nXush kelibsiz !",
                  style: TextStyle(
                    fontSize: 21.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                  ),
                ),
              ],
            ),
            Row(

              children:const [
                Padding(
                  padding: EdgeInsets.only( top : 6.0, left: 20.0),
                  child: Text("Bizning maqsad mijozlarga yaxshi kayfiyat \nulashishdir.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          const  SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 376.0,
              height: 60.0,
              child: ElevatedButton(onPressed: (){
                setState(() {

                  Navigator.of(context).push(createRoute(MyStatefulWidget()));

                });
                 },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF1D415E), // Background color
                  ),
                  child: const Text("Bosh sahifaga o'tish",
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                  ) ),
            ),
          ],
        ),
    );

  }
}
