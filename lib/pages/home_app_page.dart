import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  //Colors
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الصفحه الرئيسيه"),
        centerTitle: true,
        backgroundColor: _green2,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(context, "/BestDoctor", "افضل الاطباء"),
            SizedBox(
              height: 10,
            ),
            buildButton(context, "/BestDoctor", "التخفيضات"),
          ],
        ),
      ),
    );
  }

  Padding buildButton(BuildContext context, String routeName, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "$routeName");
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
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
              "$title",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
