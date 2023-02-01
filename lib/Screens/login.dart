import 'package:flutter/material.dart';
import 'package:medical_center_dart/Screens/login_form.dart';
class loginPage extends StatefulWidget {


  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assests/ruhuna.jpg"),
              fit: BoxFit.cover,
            ),

          ),
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assests/user.png",height: 150,),
                ),
                //Container(
                  //padding: EdgeInsets.all(10),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (_) =>loginForm()));
                        },
                        child: Text('Log In!')
                    ),


                //),
                SizedBox(
                  width: 20,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
