import 'package:flutter/material.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/pages/services/pref_service.dart';

import '../model/ucer_model.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  static final String id='signup_page';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final mailController=TextEditingController();
  final nameSurnameController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPassController=TextEditingController();
  final phoneNumController=TextEditingController();
  void _doSignup(){
    String nameSurname=nameSurnameController.text.toString().trim();
    String mail=nameSurnameController.text.toString().trim();
    String password=passwordController.text.toString().trim();
    String phoneNum=phoneNumController.text.toString().trim();
    String confirmPass=confirmPassController.text.toString().trim();
    Account user= Account.from(mail: mail, password: password, phoneNum: phoneNum, confirmPass: confirmPass, nameSurname: nameSurname);
    Prefs.storeAccount(user);
    Prefs.loadAccount().then((value) =>{
      print(user.password),
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded,size: 34,color: Colors.black,),
          onPressed: () {
            Navigator.pushReplacementNamed(context, LogInPage.id);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            //Let's Get Started!
            const Center(
               child: Text("Let's Get Started!",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
             ),
            SizedBox(height: 10,),
            //Create an account to Q Allure to get all features
             Center(
              child: Text("Create an account to Q Allure to get all features",style: TextStyle(color: Colors.black,fontSize: 16,),),
            ),
            //#Name Surname
            SizedBox(height: 40,),
            Container(
              padding:EdgeInsets.all(15) ,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(35),
              ),
              child: TextField(
                controller: nameSurnameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Colors.blue),
                  hintText:"Name Surname",
                  border: InputBorder.none,
                ),
              ),
            ),
            //Mail
            SizedBox(height: 10,),
            Container(
              padding:EdgeInsets.all(15) ,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(35)
              ),
              child: TextField(
                controller: mailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline,color: Colors.blue),
                  hintText:"Mail",
                  border: InputBorder.none,
                ),
              ),
            ),
            //#Phone
            SizedBox(height: 10,),
            Container(
              padding:EdgeInsets.all(15) ,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(35)
              ),
              child: TextField(
                controller: phoneNumController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_iphone,color: Colors.blue),
                  hintText:"Phone number",
                  border: InputBorder.none,
                ),
              ),
            ),
            //#Password
            SizedBox(height: 10,),
            Container(

              padding:EdgeInsets.all(15) ,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(35)
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline,color: Colors.blue),
                  hintText:"Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            //ConfigurePasswors
            SizedBox(height: 10,),
            Container(
              padding:EdgeInsets.all(15) ,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(35)
              ),
              child: TextField(
                controller: confirmPassController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.blue),
                  hintText:"Confirm Passoword",
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 50,right: 50,top: 40),
                padding:EdgeInsets.all(10) ,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text("CREATE",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
              ),
              onTap:() {
                _doSignup();
                Navigator.pushReplacementNamed(context, LogInPage.id);
              },
            ),
            SizedBox(height: 60,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(fontSize: 16),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Text("LogIn here",style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                    onTap: (){
                      Navigator.pushReplacementNamed(context, LogInPage.id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
