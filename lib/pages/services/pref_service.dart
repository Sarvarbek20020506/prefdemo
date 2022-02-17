import 'dart:convert';
import 'dart:ffi';

import 'package:prefdemo/model/ucer_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs{
   static storeUser(User user)async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     String stringAccount=jsonEncode(user);
     prefs.setString('user', stringAccount);
   }
   static Future <User?> loadUser()async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     String? stringAccount=prefs.getString("stringUser");
     if(stringAccount==null ||stringAccount.isEmpty){
       return null;
     }
     Map<String,dynamic> map =jsonDecode(stringAccount);
     return User.fromJson(map);
   }
   static Future <bool> removeUser(bool user)async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     return prefs.remove("user");
   }

   static storeAccount(Account user)async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     String stringAccount=jsonEncode(user);
     prefs.setString('user', stringAccount);
   }
   static Future <Account?> loadAccount()async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     String? stringAccount=prefs.getString("stringAccount");
     if(stringAccount==null ||stringAccount.isEmpty){
       return null;
     }
     Map<String,dynamic> map =jsonDecode(stringAccount);
     return Account.fromJson(map);
   }
   static Future <bool> removeAccount(bool user)async{
     SharedPreferences prefs=await SharedPreferences.getInstance();
     return prefs.remove("user");
   }






}