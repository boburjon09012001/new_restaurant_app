import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:new_restaurant/information/pizza_API_page.dart';



class DetailsPagePizza extends StatefulWidget {
  DetailsPagePizza( {Key? key}) : super(key: key);
  @override
  _DetailsPagePizzaState createState() => _DetailsPagePizzaState();
}

int _isMealSelected = 1;
class _DetailsPagePizzaState extends State<DetailsPagePizza> {



  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "+998911778050";
  }

  final TextEditingController _numberCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/burger/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [

            Container(child: myBody(PizzaAPI.forPizzaApi[_isMealSelected], context)),
          ],
        ),
      ),
    );
  }

  Widget myBody(PizzaAPI forPizzaApi, context) {
    return ListView(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0 ,top: 30.0),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25), // border color
                shape: BoxShape.circle,
              ),
              child:  InkWell(
                onTap: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 00.0 , left: 0.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ),

          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, right: 50.0),
          color: Colors.white,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 100.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 2.0,
                          height: 22.0,
                          color: Color(0xFF00195C),
                        ),
                        SizedBox(width: 4.0),
                        const    Text(
                          "Shirin tamli",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Color(0xFF1E2022),
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          forPizzaApi.name,
                          textAlign: TextAlign.left,
                          style:const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          "assets/image_burger/vaqt1.png",
                          height: 14.0,
                          color: Colors.black,
                        ),
                        Text(forPizzaApi.time,
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
                        Text(forPizzaApi.ing,
                            style: TextStyle(
                              fontSize: 17.0,
                            )),

                        Image.asset(
                          "assets/burger/kal.png",
                          height: 20.0,
                          color: Colors.black,
                        ),
                        Text("1729 kal",
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Text(forPizzaApi.info,
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Text("Tarkibi:" + forPizzaApi.ing,
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[

                        Text("Ziravorlar , Pizza hamiri, \nMol go'shti, Kolbasa, Pomidor ",
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextField(
                      controller: _numberCtrl,
                      decoration: const InputDecoration(
                        labelText: "Telefon qilish",
                        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        labelStyle: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: SizedBox(
                      height: 44.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF193B55),
                        ),
                        child: const Text("Buyurtma berish"),
                        onPressed: () async {
                          FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                        },
                      ),
                    ),
                  )


                ],
              ),
              Positioned(
                top: -66.0,
                left: -63.0,
                child: Image.asset(
                  forPizzaApi.imgURL,
                  width: 240.0,
                  height: 250.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


}
