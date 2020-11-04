import 'package:flutter/material.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';

class BestDoctor extends StatefulWidget {
  @override
  _BestDoctorState createState() => _BestDoctorState();
}

class _BestDoctorState extends State<BestDoctor> {
  //Colors
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  final _blue = Color(0xff215173);
  //Local Data
  var _localData = [
    {
      "name": "سجاد رفاء",
      "description":
          "طبيب مختص بالامراض العصبيه حاصل على شهاده الميو في الطب العصبي ",
      "location": "العراق - البصره - الجزائر",
      "image": "assets/images/profileImg.jpg"
    },
    {
      "name": "سجاد رفاء",
      "description":
          "طبيب مختص بالامراض العصبيه حاصل على شهاده الميو في الطب العصبي ",
      "location": "العراق - البصره - الجزائر",
      "image": "assets/images/profileImg.jpg"
    },
    {
      "name": "سجاد رفاء",
      "description":
          "طبيب مختص بالامراض العصبيه حاصل على شهاده الميو في الطب العصبي ",
      "location": "العراق - البصره - الجزائر",
      "image": "assets/images/profileImg.jpg"
    },
    {
      "name": "سجاد رفاء",
      "description":
          "طبيب مختص بالامراض العصبيه حاصل على شهاده الميو في الطب العصبي ",
      "location": "العراق - البصره - الجزائر",
      "image": "assets/images/profileImg.jpg"
    },
    {
      "name": "سجاد رفاء",
      "description":
          "طبيب مختص بالامراض العصبيه حاصل على شهاده الميو في الطب العصبي ",
      "location": "العراق - البصره - الجزائر",
      "image": "assets/images/profileImg.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("افضل الاطباء"),
        centerTitle: true,
        backgroundColor: _green2,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: _localData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_localData[index]["name"]),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: _blue,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  _localData[index]["image"],
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _localData[index]["description"],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  _localData[index]["location"],
                ),
                SizedBox(
                  height: 5,
                ),
                ratingDoctor(),
                Divider(
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget ratingDoctor() {
    return RatingBar(
      rating: 3,
      icon: Icon(
        Icons.star,
        size: 20,
        color: Colors.grey,
      ),
      starCount: 5,
      spacing: 3.0,
      size: 20,
      isIndicator: false,
      allowHalfRating: true,
      color: Colors.amber,
    );
  }
}
