import 'package:flutter/material.dart';
import 'package:prefdemo/model/ucer_model.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/services/pref_service.dart';
import 'package:prefdemo/pages/signup_page.dart';
class LogInPage extends StatefulWidget {
  static final String id="login_page";
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();


  void _doLogIn() {
    String mail = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user=User.from(mail:mail,password:password);
    Prefs.storeUser(user);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          //#image
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 200,
           width: 400,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/images/image1.png'),
             fit: BoxFit.cover,
             ),
           ),
          ),
          SizedBox(height: 20,),
          Text("Welcome back!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
          SizedBox(height: 10,),
          Text("Log in to your existant account of Q Allure",style: TextStyle(fontSize: 16),),
          SizedBox(height: 30,),
          //#mail
          Container(
            margin: EdgeInsets.only(left: 25,right: 25),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black12,
            ),
            child:Center(
              child:  TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Mail",
                  prefixIcon: Icon(Icons.mail),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          //#passwors
          Container(
            margin: EdgeInsets.only(left: 25,right: 25),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black12,
            ),
            child:Center(
              child:  TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          //Forgot
          Container(
            padding: EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          //#Login
          GestureDetector(
            child:  Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: FlatButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, HomePage.id);
                },
                child: Center(
                  child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            onTap: (){
              _doLogIn();
            },
          ),
          SizedBox(height: 60,),

          Container(
            child: Center(
              child: Text("Or connect using",style: TextStyle(color: Colors.grey),),
            ),
          ),
          SizedBox(height: 20,),
          //otherLog in obects
          Container(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration:BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ) ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(Icons.facebook_sharp,color: Colors.white,),
                      Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
            ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 150,
                  decoration:BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ) ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/google.png"),fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 70,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Don't have an account?",style: TextStyle(fontSize: 17),),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignupPage.id);
                  },
                  child:Text("SignUp",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
