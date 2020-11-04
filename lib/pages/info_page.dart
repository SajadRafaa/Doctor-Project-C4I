import 'package:flutter/material.dart';
// More Icon Package
import 'package:line_icons/line_icons.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  //Colors
  final _blue = Color(0xff215173);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: Text("عن التطبيق"),
        centerTitle: true,
        backgroundColor: _green2,
        //change icon color to white
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Directionality(
        // For arabic pages
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            //Title add

            SizedBox(
              height: 25,
            ),
            buildListTile(
              "عن المبادره",
              LineIcons.exclamation,
              "/AboutC4I",
            ),
            Divider(
              color: Colors.grey,
              indent: 50,
              endIndent: 50,
            ),
            buildListTile(
              "معلومات التطبيق",
              Icons.info_outline,
              "/AboutApp",
            ),
            Divider(
              color: Colors.grey,
              indent: 50,
              endIndent: 50,
            ),
            buildListTile(
              "مطورين التطبيق",
              LineIcons.code,
              "/AboutTeam",
            ),
            Divider(
              height: 30,
              color: Colors.grey,
              indent: 25,
              endIndent: 25,
            ),
            //Title add
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "معلومات المستخدم",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            buildListTile(
              "تسجيل الخروج",
              Icons.exit_to_app,
              "/C4IPage",
            ),
          ],
        ),
      ),
    );
  }

  // Fun to add List Tile
  ListTile buildListTile(String title, IconData icon, String routeName) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, "$routeName"),
      title: Text(
        "$title",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      leading: Icon(
        icon,
        color: _blue,
        size: 30,
      ),
    );
  }
}
