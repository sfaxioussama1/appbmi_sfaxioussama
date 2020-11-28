import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//hethya nahitha 5ater hacti beha class
//cards(){
//  return Container(
//      margin: EdgeInsets.all(15.0),
//      decoration:BoxDecoration(
//          color:Color(0xFF1D1E33),
//          borderRadius: BorderRadius.circular(10.0)
//      )
//  );
//
//}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column (
        children: [
          Expanded(child:Row(
            children: [
              Expanded(child: Cards(
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      size:70.0,
                      color: Colors.white,

                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Text('MALE', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey

                    ))
                  ],
                ),
              ) ),
              Expanded(child:Cards()),
            ],
          )),
          Expanded(child: Cards()),
          Expanded(child:Row(
            children: [
              Expanded(child:Cards()),
              Expanded(child: Cards()),
            ],
          )),

          Container(
            color: Colors.pink,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: 80.0,
          ),



      ],
    ),
        backgroundColor: Color(0xFF0A0D22),
    );

  }
}

class Cards extends StatelessWidget {
  Cards({@required this.card});
    final Widget card;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:card,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(10.0)
        )
    );
  }
}
