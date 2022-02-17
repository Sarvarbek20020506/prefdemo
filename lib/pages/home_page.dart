import 'package:flutter/material.dart';
import 'package:prefdemo/pages/login_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

          Icon(Icons.lock),
          Icon(Icons.add_shopping_cart),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, LogInPage.id);
            },
            child: Icon(Icons.menu),
          ),
        ],
        title: Text("SHaredpre"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Icon(Icons.star,color: Colors.red),
      ),
      drawer:Drawer(
        child: Center(
          child: Icon(Icons.lock_outline,color: Colors.blueAccent,size: 30),
        ),
      ),
    );
  }
}
