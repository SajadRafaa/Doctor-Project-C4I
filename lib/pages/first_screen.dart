import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  // colors
  final _blue = Color(0xff215173);
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  final _backGround = Color(0xffE0ECDE);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Hero Image Section Start
          //===============================================
          Container(
            padding: EdgeInsets.only(top: 15),
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: _backGround,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/heroImage.png"),
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
          ),
          // Hero Image Section End
          //===============================================
          SizedBox(
            height: 20,
          ),
          //===============================================
          // Hero Text Start
          Center(
            child: new Text(
              "احجز طبيبك",
              style: TextStyle(
                color: _green2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: new Text(
              "تسجيل الدخول",
              style: TextStyle(
                color: _blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Hero Text End
          //===============================================
          //Custom Button Start
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/DoctorSignUp");
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
                    "طبيب",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/PersonSignUp");
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
                    "مريض",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Custom Button End
          //===============================================
          // Already Have an Account Section

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/Login"),
                child: Text(
                  " Sign In",
                  style: TextStyle(
                    color: _blue,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Text(
                "  هل لديك حساب مسبقا ؟",
                style: TextStyle(
                  color: _green2,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
          //===============================================
        ],
      ),
    );
  }
}
