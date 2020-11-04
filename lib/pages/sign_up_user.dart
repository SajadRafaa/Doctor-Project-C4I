import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserSignUp extends StatefulWidget {
  @override
  _UserSignUpState createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  // colors
  final _green1 = Color(0xff73DC96);
  static const _green2 = Color(0xff3AA59B);
  // use user image svg
  static const assetName = 'assets/images/personIcon.svg';
  Widget svgBook = SvgPicture.asset(
    assetName,
    semanticsLabel: 'User logo',
    color: _green2,
  );
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
                  Container(
                    height: 100,
                    child: svgBook,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //======================
                  // email input
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "الاسم",
                      hintStyle: TextStyle(color: _green2),
                      prefixIcon: Icon(
                        Icons.person_outline,
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
                  //end passowrd input
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
                    height: 25,
                  ),
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
                        Navigator.pushNamed(context, "/Login");
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
                            "انشاء حساب",
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
                  // Divider(
                  //   color: Colors.grey,
                  //   indent: 40,
                  //   endIndent: 40,
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  //======================
                  // another way
                  Text(
                    "او سجل باستخدام",
                    style: TextStyle(
                      color: _green2,
                      fontSize: 18,
                    ),
                  ),
                  // //end another way
                  // //======================
                  SizedBox(
                    height: 15,
                  ),
                  // //======================
                  // // another way

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
