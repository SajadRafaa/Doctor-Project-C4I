import 'package:flutter/material.dart';
import 'package:doctors_project/models/loading_page.dart' as loading;

class SearchDoctorLocation extends StatefulWidget {
  @override
  _SearchDoctorLocationState createState() => _SearchDoctorLocationState();
}

class _SearchDoctorLocationState extends State<SearchDoctorLocation> {
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // app bar
        appBar: AppBar(
          title: Text("البحث في الخريطه"),
          centerTitle: true,
          backgroundColor: _green2,
          // search bar section
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
                        hintText: "ادخل اسم الدكتور للبحث عن مكانه",
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // add loading section
        body: loading.LoadingPage().getLoading(),
      ),
    );
  }
}
