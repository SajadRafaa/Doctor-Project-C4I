import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSignUp extends StatefulWidget {
  @override
  _DoctorSignUpState createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  // colors
  final _blue = Color(0xff215173);
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  //use doctor image svg
  static const assetName = 'assets/images/doctorIcon.svg';
  Widget svgDoctor = SvgPicture.asset(assetName, semanticsLabel: 'Doctor logo');
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
                    child: svgDoctor,
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
                  // passowrd input
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "your doctor Id",
                      hintStyle: TextStyle(color: _green2),
                      prefixIcon: Icon(
                        Icons.folder_shared,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
