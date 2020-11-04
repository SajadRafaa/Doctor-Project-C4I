import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // colors
  final _blue = Color(0xff215173);
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Form(
              child: Column(
                children: [
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      color: _blue,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //======================
                  // email input
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "الايميل",
                      hintStyle: TextStyle(color: _green2),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: _green2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: _green2,
                        ),
                      ),
                    ),
                  ),
                  //end email input
                  //======================
                  SizedBox(
                    height: 25,
                  ),
                  //======================
                  // passowrd input
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "كلمه المرور",
                      hintStyle: TextStyle(color: _green2),
                      prefixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: _green2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: _green2,
                        ),
                      ),
                    ),
                  ),
                  //end passowrd input
                  //======================
                  SizedBox(
                    height: 15,
                  ),
                  //======================
                  // custom Button
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            "/HeroPage", (route) => false);
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              _green1,
                              _green2,
                            ],
                          ),
                        ),
                        child: Center(
                          child: new Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //end custom Button
                  //======================
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 40,
                    endIndent: 40,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //======================
                  // another way
                  Text(
                    "او سجل باستخدام",
                    style: TextStyle(
                      color: _green2,
                      fontSize: 18,
                    ),
                  ),
                  //end another way
                  //======================
                  SizedBox(
                    height: 15,
                  ),
                  //======================
                  // another way

                  GoogleSignInButton(
                    text: "باستخدام حساب كوكل",
                    textStyle: TextStyle(
                      fontFamily: "Cairo",
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    onPressed: () {/* ... */},
                    darkMode: true, // default: false
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FacebookSignInButton(
                    text: "باستخدام حساب الفيس بوك",
                    textStyle: TextStyle(
                      fontFamily: "Cairo",
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    onPressed: () {
                      // call authentication logic
                    },
                  ),

                  //end another way
                  //======================
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
