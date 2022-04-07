import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({Key? key}) : super(key: key);

  @override
  _CallingPageState createState() => _CallingPageState();
}



class _CallingPageState extends State<CallingPage> {
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
        decoration:const  BoxDecoration(
          image:  DecorationImage(image:  AssetImage("assets/burger/background.png"), fit: BoxFit.cover,),
        ),
        child: Stack(
          children: [
            ListView(
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
                Card(
                  margin: EdgeInsets.only( left : 40.0, right: 40.0 , top: 180.0 , ),
                  elevation: 20.0,
                  child: Container(
                    height: 360.0,
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding:const EdgeInsets.only(top: 25.0,left: 25.0,right: 25.0, bottom: 0.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Container(
                                  child: Expanded(
                                    child: Text("Kosonsoy tuman Kosonsoy shahri. \n Mo'njal : Artel magazin tepasi",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
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
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
