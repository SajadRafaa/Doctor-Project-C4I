import 'package:flutter/material.dart';
import 'package:doctors_project/models/loading_page.dart' as loading;

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void choiceAction(String choice) {
    setState(() {
      if (choice == "عيون") {
        _hintText = "1";
        return Center(
          child: loading.LoadingPage().getLoading(),
        );
      } else if (choice == "قلب") {
        _hintText = "قلب";
        return Center(
          child: loading.LoadingPage().getLoading(),
        );
      } else if (choice == "باطنيه") {
        _hintText = "باطنيه";
        return Center(
          child: loading.LoadingPage().getLoading(),
        );
      }
    });
  }

  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  // hint text in text form field
  String _hintText = "ادخل اسم الدكتور للبحث عنه";
  // doctor type list
  List<String> doctorsType = [
    "عيون",
    "قلب",
    "باطنيه",
    "نفسيه",
    "3",
    "5",
    "5",
    "6",
    "5",
    "j",
    "g",
    "e",
    "t",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("البحث"),
        centerTitle: true,
        backgroundColor: _green2,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: _hintText,
                      contentPadding: new EdgeInsets.symmetric(
                        vertical: -10.0,
                        horizontal: 20.0,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          24.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          24.0,
                        ),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          24.0,
                        ),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                      suffixIcon: PopupMenuButton<String>(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.grey,
                        ),
                        onSelected: choiceAction,
                        itemBuilder: (BuildContext context) {
                          return doctorsType.map((String doctorsType) {
                            return PopupMenuItem<String>(
                              value: doctorsType,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(doctorsType),
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(child: loading.LoadingPage().getLoading()),
    );
  }
}
