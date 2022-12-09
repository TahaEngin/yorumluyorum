import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yorum/SignUpScreen.dart';
import 'dart:convert' show utf8;
import 'HomeScreen.dart';
import 'Templates/text_template.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
var controllert =TextEditingController();
var controllerc = TextEditingController();
String mail = "";
String sifre = "";
bool check = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Temp_TextState(Icons.mail_outline,"E-mail", controllert,false,false),
                Temp_TextState(Icons.key, "Şifre", controllerc,true,true),
                CheckboxListTile(
                  title: Text("Şifremi Hatırla"),
                  value: check,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? veri){
                    print ("Hatırlarım cnm");
                    setState(() {
                      check = veri!;
                    });
                  },
                ),
                GestureDetector(
                  onTap:(){
                  },
                  child: Text(
                      "Şifremi Unuttum"
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250.0,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text("Giriş Yap",style: TextStyle(fontSize: 18.0),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: (){
                        mail = controllert.text;
                        sifre = controllerc.text;
                        print(mail);
                        print(sifre);
                        if (mail == "adm" && sifre == "adm"){
                          print("Giriş Başarılı");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));


                        }
                        else{
                          print("Giriş Başarısız");
                        }
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hesabınız yok mu? "),
                    TextButton(onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    }, child: Text("Kaydolun."))
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}