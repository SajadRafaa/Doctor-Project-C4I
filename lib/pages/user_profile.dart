import 'package:flutter/material.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';
// More Icon Package
import 'package:line_icons/line_icons.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  //Colors
  final _blue = Color(0xff215173);
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 35,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: _green2,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage('assets/images/profileImg.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "الدكتور سجاد رفاء",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "اختصاص امراض عصبيه",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: RatingBar(
                      rating: 4.5,
                      icon: Icon(Icons.star, size: 20, color: Colors.grey),
                      starCount: 5,
                      spacing: 5.0,
                      size: 20,
                      isIndicator: true,
                      allowHalfRating: true,
                      onRatingCallback: (value, notifier) {
                        //isIndicator:=true, so you dont need to  care this.
                      },
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            //section 2
            Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("عياده الجزائر الصحيه"),
                    leading: Icon(LineIcons.hospital_o),
                    subtitle: Row(
                      children: [
                        Icon(
                          LineIcons.map_marker,
                          color: Colors.grey,
                        ),
                        Text("العراق - البصره - الجزائر")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "الوصف",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "اوقات الدوام",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "جميع الايام ماعدى الجمعه",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "سعر المعاينه",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "25 الف \n ومجانا للعوائل الفقيره",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
