import 'package:bmi_calculator/bmi_calculator_result.dart';
import 'package:bmi_calculator/calculations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bmi_calculator extends StatefulWidget {
  const bmi_calculator({Key? key}) : super(key: key);

  @override
  _bmi_calculatorState createState() => _bmi_calculatorState();
}

class _bmi_calculatorState extends State<bmi_calculator> {
  double height=1;
  int weight=50;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          //leading: Icon(Icons.menu),
          title: Text("BMI Calculator"),
          titleTextStyle: TextStyle(
            //fontFamily: Verdana,
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 130,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      Text("HEIGHT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          FlatButton(

                              onPressed:(){
                                setState(() {
                                  height--;
                                  print(height);
                                });
                              },
                              child: Icon(
                                Icons.remove

                              ),
                          ),
                          SizedBox( width: 20,),
                          Text(height.toString()+" Inches",
                            style: TextStyle(
                             fontSize: 20,
                            ),
                          ),
                          SizedBox( width: 5,),
                          FlatButton(
                            onPressed:(){
                              setState(() {
                                height++;
                                print(height);
                              });
                            },

                            child: Icon(
                                Icons.add
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                //SPACE AFTER HEIGHT
                SizedBox(height: 20,),
                Container(
                  height: 130,
                  width: 300,
                  decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                  child: Column(
                    children: [
                      Text("WEIGHT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          FlatButton(
                            onPressed:(){
                             setState(() {
                               weight --;
                               print(weight);
                             });
                            },
                            child: Icon(
                                Icons.remove
                            ),
                          ),
                          SizedBox( width: 30,),
                          Text(weight.toString()+" KG",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox( width: 15,),
                          FlatButton(
                            onPressed:(){
                              setState(() {
                                weight++;
                                print(weight);
                              });
                            },
                            child: Icon(
                                Icons.add
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: FlatButton(
                    onPressed: (){
                      calculations cal= calculations(h: height,w: weight);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bmi_calculator_result(
                      calc: cal.calc(),
                        feedback: cal.feedback(),
                      )));
                      print("Show Result");
                    },
                    height: 50,
                    //minWidth: 150,
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //SizedBox(width: 5,),
                        Icon(Icons.search,
                          size: 40,
                        ),
                        SizedBox(width: 10,),
                        Text("RESULT",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        )
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}
