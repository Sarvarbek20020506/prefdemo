import 'dart:convert';

class User {
  String mail;
  String password;
  User({ required this.mail,required this.password});

  User.from({required this.mail, required this.password});

  User.fromJson(Map<String, dynamic> json)
      : mail=json["mail"],
        password=json["password"];

  Map<String,dynamic>toJson()=>{
    "mail":mail,
    "password":password,
  };

}
class Account{
  String mail;
  String password;
  String phoneNum;
  String nameSurname;
  String confirmPass;
  Account({ required this.mail,required this.password,required this.phoneNum,required this.confirmPass,required this.nameSurname});

  Account.from({required this.mail, required this.password,required this.phoneNum,required this.confirmPass,required this.nameSurname});

  Account.fromJson(Map<String, dynamic> json)
      : mail=json["mail"],
        confirmPass=json["confirmPass"],
        phoneNum=json["phoneNum"],
        nameSurname=json["nameSurname"],
        password=json["password"];

  Map<String,dynamic>toJson()=>{
    "mail":mail,
    "password":password,
    "confirmPass":confirmPass,
    "phoneNum":phoneNum,
    "nameSurname":nameSurname,
  };
}