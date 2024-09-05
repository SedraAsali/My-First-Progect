import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class calculator extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<calculator> {
  bool isMale = true;
  double height=50.0;
  int weight=30;
  int Age=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Center(
          child: Text('BMI Calculator',
            style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold),),
        ),

      ),
      body:
      Container(
        color: Colors.black,
        child:
        Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color:  isMale? Colors.red:  Colors.grey.shade800,

                          ),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Icon(Icons.accessibility_new_rounded,
                                color: Colors.blue,
                                size:70.0 ,
                              ),
                              Text('Male',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize:25.0 ,
                                ),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: !isMale?Colors.red:Colors.grey.shade800,
                          ),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Icon(Icons.accessibility_new_rounded,
                                color: Colors.pink,
                                size:70.0 ,
                              ),
                              Text('Female',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize:25.0 ,
                                ),),

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade800,),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('Height',
                        style: TextStyle(color: Colors.white54,
                          fontSize: 25.0,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}',
                            style: TextStyle(color: Colors.white,
                              fontSize: 25.0,
                            ),),
                          Text('cm',
                            style: TextStyle(color: Colors.white,
                              fontSize: 15.0,
                            ),),

                        ],
                      ),
                      Slider(
                          activeColor:Colors.red ,
                          value: height,
                          min: 10,
                          max: 300,
                          onChanged: (value){
                            setState(() {
                              height=value;
                            });
                          }),

                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade800,) ,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Text(' Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            Text('${weight}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  mini:true,
                                  child: Icon(
                                    Icons.remove,
                                  ),),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),),
                              ],
                            ),
                          ],


                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade800,) ,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Text(' Age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            Text('${Age}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    Age--;
                                  });
                                },
                                  mini:true,
                                  child: Icon(
                                    Icons.remove,
                                  ),),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    Age++;
                                  });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),),
                              ],
                            ),
                          ],


                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
              ),
              child: Center(
                child: Text('CALCULATE'
                  ,style: TextStyle(
                    color: Colors.white,
                    //  backgroundColor: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
