import 'package:flutter/material.dart';

class AboutC4I extends StatelessWidget {
  //Colors
  final _blue = Color(0xff215173);
  // about code for iraq text
  final _aboutC4I = """
  وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة، تعتبر هذه المبادرة مبادرة تعليمية حقيقية ترعى المهتمين بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات والاتصالات ونظم تشغيل الحاسوب باستخدام التقنيات مفتوحة المصدر كما توفر لهم جميع الدروس التعليمية الازمة وبشكل مجاني تماما بل الاهم من ذلك تعتمد على مبدا المواطنة والمشاركة الفاعلة في تأسيس وبناء المجتمع تدعو هذه المبادرة جميع الطلبة والخريجين والهواة والاساتذة الجامعيين والمهتمين مجال البرمجة وتقنيات المعلومات وكذلك الاختصاصات الأخرى السب التطوع والمشاركة الفعلية لأجل الاتقاء بواقع البلد, حيث تعتبر فرضة عظيمة اكتساب الخبرة والمهارة عن طريق تصميم وتنفيذ برامج وتطبيقات خدمية من شأنها خدمة المواطن وذلك ضمن مجاميع عمل نشطة وفعالة يتعاون فيها جميع الافراد كفريق واحد تبادل الآراء والخبرات ويطرح الافكار ليتم مناقشتها وتطبيقها على أرض الواقع, كما تفتح المجال لجميع المواطنين العراقيين ومن جميع الاختصاصات الى المشاركة الفاعلة في هذه المشاريع لرفد الفريق بالخبرات والأفكار والآراء والمقترحات التي من شأنها خدمة المجتمع بأفضل ما يمكن. 
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
            // add code for iraq image  section
            // first add border around the image
            CircleAvatar(
              radius: 65,
              backgroundColor: _blue,
              // secound add the image
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/CFI_Logo.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // add padding around the text and add the text
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                _aboutC4I,
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
