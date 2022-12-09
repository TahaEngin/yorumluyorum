import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Templates/text_template.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen
> createState() => _SignUpScreenState();
}
var controllert =TextEditingController();
var controllerc = TextEditingController();
var controlleri = TextEditingController();
var controllerc2 = TextEditingController();
bool check = false;

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.asset("assets/resimler/lacivertlogo.png"),
                Temp_TextState(Icons.mail_outline,"Yetkili Maili", controllert,false,false),
                Temp_TextState(Icons.person,"İsim Soyisim", controlleri,false,false),
                Temp_TextState(Icons.key, "Şifre", controllerc,true,true),
                Temp_TextState(Icons.key, "Şifre Tekrar", controllerc2,true,true),
                CheckboxListTile(
                  title: Text("Okudum kabul ediyom."),
                  value: check,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? veri){
                    print ("GG WP EZ");
                    setState(() {
                      check = veri!;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250.0,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text("Kayıt ol",style: TextStyle(fontSize: 18.0),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: (){
                      },
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}