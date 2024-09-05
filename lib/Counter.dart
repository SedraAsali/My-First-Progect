import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Counter',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body:

      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end:Alignment.bottomLeft ,
            colors: [Colors.black12,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){

                print(count);
                setState(() {
                  count--;
                });


              },
                child: Text('Minus',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              SizedBox(
                width: 10.0,
              ),
              Text('$count',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              TextButton(onPressed: (){
                setState(() {
                  count++;
                });
                print(count);
              },
                child: Text('Pluse',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
            ],

          ),
        ),
      ),
    );
  }
}
