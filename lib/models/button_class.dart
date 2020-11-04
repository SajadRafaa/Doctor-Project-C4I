import 'package:flutter/material.dart';

//Colors
final _green1 = Color(0xff73DC96);
final _green2 = Color(0xff3AA59B);

class ButtonClass extends StatefulWidget {
  @override
  ButtonClassState createState() => ButtonClassState();
}

class ButtonClassState extends State<ButtonClass> {
  Widget getCustomButton(String title, String routeName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "$routeName");
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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
