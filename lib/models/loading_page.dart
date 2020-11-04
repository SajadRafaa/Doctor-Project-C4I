import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  final _blue = Color(0xff215173);
  final _green1 = Color(0xff73DC96);
  final _green2 = Color(0xff3AA59B);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
  }

  Widget getLoading() {
    final spinkit = SpinKitWave(
      type: SpinKitWaveType.end,
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? _blue : _green1,
          ),
        );
      },
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "الرجاء الانتضار\n",
            style: TextStyle(fontSize: 15),
          ),
          spinkit,
        ],
      ),
    );
  }
}
