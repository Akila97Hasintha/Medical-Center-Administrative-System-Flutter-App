import 'package:flutter/material.dart';

class loginForm extends StatefulWidget {
  const loginForm({super.key, });

  @override
  State<loginForm> createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
 // TextEditingController nameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   // bool _isObscure = true;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Logn form'),
        // ),

        body: SizedBox(
          width: double.infinity,
          height:double.infinity ,
          child: Container(

            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assests/LoginF.jpg'),
                fit: BoxFit.cover,),

            ),
            padding: EdgeInsets.all(10),
                    // child: Container(
                    //   width: 100,
                    //   height: 100,
                    //   color: Colors.white70,


                child: Stack(
                  alignment: Alignment.center,
                  children:<Widget>[
                    Container(
                      height: 500,
                      color: Colors.white70,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,


                        // child: ListView(
                        children: <Widget>[

                          Container(

                            alignment: Alignment.center,
                            padding: EdgeInsets.all(20),
                            child: Text('Log In', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontSize: 100)),
                          ),


                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(

                              //controller: nameController,
                              decoration: InputDecoration(
                                //prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(),
                                labelText: 'User name',





                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              obscureText: true,
                              //controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(
                                  Icons.visibility,
                                ),
                                border: OutlineInputBorder(),
                                labelText: 'password',
                              ),
                            ),
                          ),

                          Container(

                            padding: EdgeInsets.fromLTRB(10, 10, 10,10),

                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(shape:StadiumBorder() ,
                                minimumSize: const Size.fromHeight(50),
                              ),

                              onPressed: (){},
                              child: Text(
                                  'LOG IN'
                              ),

                            ),
                          ),


                        ],
                        // ),
                      ),
                    ),
                  ],

                ),
              // center

          ),
        ),
      ),
    );
  }
}
