import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class bmi_calculator_result extends StatefulWidget {
  bmi_calculator_result({required this.calc,required this.feedback});
  String calc;
  String feedback;

  @override
  _bmi_calculator_resultState createState() => _bmi_calculator_resultState();
}

class _bmi_calculator_resultState extends State<bmi_calculator_result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(

          title: Text( "Calculation Result",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  child: Column(
                    children: [
                      Text("YOUR BMI RESULT",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ),
                SizedBox( height: 20,),
                Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: [
                        Text(widget.calc.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox( height: 20,),
                Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                    child: Column(
                      children: [
                        Text(widget.feedback.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox( height: 20,),
                Container(
                  height: 50,
                  width: 300,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bmi_calculator()));
                      print("Main Screen");
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
                        Text("RE-CALCULATE",
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
