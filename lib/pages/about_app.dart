import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  // Colors
  final _blue = Color(0xff215173);
  // about app text
  final _aboutApp = """
  \nتطبيق احجز طبيبك :\n

اول تطبيق للحجز لدى العيادات والمستشفيات والمراكز التخصصية في البصرة .
يعتبر إحجز طبيبك تطبيق سهل و مميز في محافظة البصرة ، وسيكون اول دليل شامل لأطباء  البصرة بالاضافة لأمكانية الحجز ، التطبيق يوفر خدمات وميزات كثيرة جميعها مجانية بالنسبة للمستخدمين من اهمها:
- يتميز بسهولة الاستخدام، حيث تم اختزال جميع الميزات بواجهة واحد بسيطة تجمع كل حاجات المريض وتخرج بالنتائج المطلوبة.
- امكانية البحث عن اقرب عيادة، او عيادة يتوفر الحجز المباشر لها، حيث يتميز البحث لدينا بأنه عملي وسريع وسهل التنقل ويمكن الاستفادة من النتائج الاخرى والتي قد لا تتوفر فيها المواقع الدقيقة للفائدة.
- امكانية الوصول للطبيب لموقعه الدقيق على الخارطة
- مجاني
- يمكنك البحث عن المستشفيات والمراكز التخصصية ايضاً، فالتطبيق يحاول ان يجمع كلَّ المرافق الصحية الخاصة في البصرة من اجل الفائدة العامة، وتسهيل الوصول اليها
- يمكنك البحث عن الاختصاص المطلوب، فلدينا في قواعد بياناتنا اطباء بكل الاختصاصات
-وجود ثلاث انواع من التسجيل
 أ- تسجيل ك دكتور ويطلب منه هوية نقابة الاطباء او ما يثبت كونه طبيب
  ب- تسجيل ك سوبر ادمن
   ج- تسجيل ك مريض
-توضيح ايام العطل لكل دكتور بنشرها في ملفه الشخصي ومكان عمله وساعات العمل في كل مكان
-نشر ايام التخفيضات في الاسعار للمراكز او اي تخفيضات للعوائل المتعففة والايتام في الصفحة الرئيسية home page
-سلايدر خاص في home page  باسم الدكتور الاكثر تميزا بالعطاء المجاني من استشارات او عمليات مجانية 

، وهذا يساعد في انضاج الرأي العام نحو الاطباء
بالاضافة الى خدمات اخرى كثيرة  .

   """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Directionality(
        // for arabic pages
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            // add app icon image
            // first add border around the image
            CircleAvatar(
              radius: 65,
              backgroundColor: _blue,
              // secound add the image
              child: CircleAvatar(
                radius: 60,
                child: Center(
                  child: Text("App Icon"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // add the text of the app and padding
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                _aboutApp,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
