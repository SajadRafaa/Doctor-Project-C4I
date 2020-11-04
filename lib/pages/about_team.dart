import 'package:flutter/material.dart';
// More Icon Package
import 'package:line_icons/line_icons.dart';

class AboutTeam extends StatelessWidget {
  //Colors
  final _blue = Color(0xff215173);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        backgroundColor: _green2,
        title: Text("المطورين"),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Directionality(
        // for arabic pages
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // add title 1
                Text(
                  "تم تنفيذ هذا التطبيق بواسطه فريق مبادره",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                // add title 2
                Text(
                  "Code For Iraq",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey,
              indent: 30,
              endIndent: 30,
            ),
            // add the title and padding
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "برمجه واجهات التطبيق",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            buildListTile("سجاد رفاء حسن", LineIcons.code),
            Divider(
              color: Colors.grey,
              height: 0,
              indent: 50,
              endIndent: 50,
            ),
            buildListTile("علاء حسن  المشلب", LineIcons.code),
            Divider(
              color: Colors.grey,
              height: 0,
              indent: 50,
              endIndent: 50,
            ),
            buildListTile("فهد", LineIcons.code),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "تصميم واجهات التطبيق",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            buildListTile("مصطفى علي", LineIcons.paint_brush),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "الاشراف على التنفيذ",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            buildListTile("كفاح", LineIcons.user_secret)
          ],
        ),
      ),
    );
  }

  // Team section
  // name and icon
  ListTile buildListTile(String title, IconData icon) {
    return ListTile(
      onTap: () {},
      title: Text(
        "$title",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      leading: Icon(
        icon,
        color: _blue,
        size: 25,
      ),
    );
  }
}
