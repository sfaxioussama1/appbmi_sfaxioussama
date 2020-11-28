import 'package:flutter/material.dart';

import 'home_page.dart';
class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           title:Text('BMI CALCULATOR'),
          backgroundColor: Color(0xFF0A0D22),

),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(
            child: Container(
              padding:EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                )
              ),

            ),
          ),
          Expanded(
          flex: 5,
          child: Cards(
            c:Color(0xFF101427),
            card:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                          Text(
                           'Normal',
                            style: TextStyle(
                            color: Color(0xFF24D876),
                            fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                               ),
                              ),
                 Text(
                   '18.0', style:TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold,color: Colors.white)
                 ),
                 Text('Your BMI result is quitte low,you should eat more :)',textAlign:TextAlign.center,style:TextStyle( color:Colors.white,fontSize: 22.0)),


               ],

            ) ,

          )
          ),
          GestureDetector(
              onTap:(){
                Navigator.pop(context);
              },
              child: Container(
                child:Center(
                    child: Text('RE-CALCULATE', style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color:Colors.white))),
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
