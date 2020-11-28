import 'package:appbmisfaxioussama/controler/calcul.dart';

import 'final_page.dart';
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
  Color allitems = Color(0xFF1D1E33);
  Color male = Color(0xFF1D1E33);
  Color female = Color(0xFF1D1E33);

  int height = 180;
  int weight = 60;
  int age = 50;

void colorUp(int s){
  if (s==1){
    if(male == Color(0xFF111328)){
      male =Color(0xFF1D1E33);
      female = Color(0xFF111328);

    }
    else{
      male=Color(0xFF111328);
    }
  }
   if(s==2){
    if(female == Color(0xFF111328)){
      female =Color(0xFF1D1E33);
      male = Color(0xFF111328);
    }
    else{
      female=Color(0xFF111328);

    }
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(child:Row(
            children: [
              Expanded(
                child: GestureDetector(
                 onTap: () {
                   setState(() {
                     colorUp(1);

                   });

                           },
                  child: Cards(
                    c:male,
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
              ) )),
              Expanded(
                child: GestureDetector(
                     onTap: () {
                       setState(() {
                         colorUp(2);

                           });

                             },
                  child:Cards(
                c:female,
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.venus,
                      size:70.0,
                      color: Colors.white,

                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Text('FEMALE', style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey

                    ))
                  ],
                ),
              ))),
            ],
          )),
          Expanded(child: Cards(c:allitems,
          card:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HEIGHT', style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey

              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height.toString(),
                  style:TextStyle(
                    fontSize:35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  )),
                  Text('cm', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey

                  )),
                ],
              ),
              SliderTheme(data:SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                thumbColor: Colors.pink,
                overlayColor: Colors.pinkAccent,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 18.0)
              ),child:Slider(
                value : height.toDouble(),
                min: 100.0,
                max: 300.0,

                inactiveColor: Colors.grey,
                onChanged: (double newnew){


                  setState(() {
                    height = newnew.round();
                  });

                }




              )),
            ],

          ))),
          Expanded(child:Row(
            children: [
              Expanded(child:Cards(c:allitems,
              card:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey

                  )),
                  Text(
                    weight.toString(),
                     style:TextStyle(
                                    fontSize:35.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                             )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                  FloatingActionButton(
                    heroTag: "btn1",
                    onPressed: (){
                      setState(() {
                        weight--;
                      });
                    },
                    backgroundColor:Colors.pink ,
                    child:Icon(FontAwesomeIcons.minus,color:Colors.white),
                  ),
                  SizedBox(width:8.0,),
                  FloatingActionButton(
                    heroTag: "btn2",
                    onPressed: (){
                      setState(() {
                        weight++;
                      });
                    },
                    backgroundColor:Colors.pink ,
                    child:Icon(FontAwesomeIcons.plus,color:Colors.white),
                  ),

                            ] ,), ],

              ))),
              Expanded(child:Cards(c:allitems,
                  card:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE', style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey

                      )),
                      Text(
                          age.toString(),
                          style:TextStyle(
                            fontSize:35.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          FloatingActionButton(
                            heroTag: "btn3",
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                            backgroundColor:Colors.pink ,
                            child:Icon(FontAwesomeIcons.minus,color:Colors.white),
                          ),
                          SizedBox(width:8.0,),
                          FloatingActionButton(
                            heroTag: "btn4",
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            backgroundColor:Colors.pink ,
                            child:Icon(FontAwesomeIcons.plus,color:Colors.white),
                          ),

                        ] ,), ],

                  )))
            ],
          )),

          GestureDetector(
              onTap:(){
                Calcul ca = Calcul(height: height,weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context) => FinalPage(
                  finalBmiResult:ca.BmiCalc(),
                  txtResult:ca.getFinalResult(),
                  fed:ca.getIt(),


                )));

              },
            child: Container(
              child:Center(
              child: Text('CALCULATE', style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color:Colors.white))),
            color: Colors.pink,
            margin: EdgeInsets.only(top:10.0),
            padding: EdgeInsets.only(bottom:20.0),
            width: double.infinity,
            height: 80.0,
            )
          ),



      ],
    ),
        backgroundColor: Color(0xFF0A0D22),
    );

  }
}




class Cards extends StatelessWidget {
  Cards({@required this.c,this.card});
  final Color c;
    final Widget card;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:card,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(10.0)
        )
    );
  }
}

//class IcoButtonns extends StatelessWidget {
//  IcoButtonns({this.child});
//  final Widget child;
//  @override
//  Widget build(BuildContext context){
//    return RawMaterialButton(
//      child:child,
//    );
//  }
//}
