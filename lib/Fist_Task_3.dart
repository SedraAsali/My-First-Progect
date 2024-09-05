import 'package:flutter/material.dart';

class Task_3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.purple.shade200,
      ),
      body:
      Container(
        width: double.infinity,
        decoration:BoxDecoration (
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple.shade200,
                Colors.blueAccent.shade100,
              ],
            )),

        child:
        Center(
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                Text("Create Account",
                  style: TextStyle(color:Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 0,
                ),
                Text("to get started now!",
                  style: TextStyle(color:Colors.white,
                    fontSize: 25.0,
                  ),),
                SizedBox(
                  height:16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Container(
                    decoration:
                    BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14.0),),
                    // color: Colors.white.withOpacity(0.2),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                      InputDecoration(
                        // enabledBorder: //UnderlineInputBorder(borderSide: BorderSide(color:Colors.white),
                        //   ),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color:Colors.white, ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          //borderSide: BorderSide(color:Colors.white)
                        ),


                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:8.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,

                  ),
                  child: Container(

                    decoration:
                    BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    // color: Colors.white.withOpacity(0.2),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(//hintStyle: Colors.white,

                        hintText: 'Password ',
                        hintStyle: TextStyle(color:Colors.white, ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0),),


                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height:8.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,

                  ),
                  child: Container(

                    decoration:
                    BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    // color: Colors.white.withOpacity(0.2),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(//hintStyle: Colors.white,

                        hintText: 'Confirm Password ',
                        hintStyle: TextStyle(color:Colors.white, ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0),),


                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 40.0,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular((8.0),),),
                  width: 320.0,
                  child:
                  MaterialButton(onPressed: (){},

                    child: Text('Sign Up',
                      style: TextStyle(color: Colors.black,
                        fontWeight:FontWeight.bold,
                      ),),),

                ),
                SizedBox(
                  height: 50.0,
                ),
                // Expanded(child: Divider()),لحتى نحط خط قبل النص او بعدو
                Row(
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(
                      width:6.0,
                    ),
                    Text('Or Sign Up with',
                      style: TextStyle(color: Colors.white,),
                    ),
                    SizedBox(
                      width:6.0,
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: Colors.white,
                          // padding:EdgeInsets.only(
                          //    right: 100.0,


                        ),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0,
                            right: 50.0,),
                          child: ImageIcon(NetworkImage('https://th.bing.com/th/id/R.96c1a6566397efcf7de758fd2a6f116a?rik=LwK4OM1JQPW06A&pid=ImgRaw&r=0')),
                        ),
                        //Icon(Icons.g_mobiledata_rounded
                        //   ,color: Colors.blueAccent,)),
                        // SizedBox(width: 8.0,),
                      ),
                      SizedBox(
                        width:8.0,
                      ),
                      TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: Colors.white,
                          // padding:EdgeInsets.only(
                          //    right: 100.0,


                        ),
                        child:
                        Padding(
                            padding: const EdgeInsets.only(left: 50.0,
                              right: 50.0,),
                            child:
                            Icon(Icons.facebook
                              ,color: Colors.blueAccent,)),

                      ),
                    ],
                  ),
                ),
                SizedBox(

                  height: 75.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                  ),
                  child: Row(
                    children: [
                      Text('Already have an account?'),
                      TextButton(onPressed: (){},
                          child: Text('Login Now',style: TextStyle(color: Colors.white),)),
                    ],
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