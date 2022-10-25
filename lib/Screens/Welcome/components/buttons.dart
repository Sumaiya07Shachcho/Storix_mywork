import 'package:flutter/material.dart';

class WelcomePageButtons extends StatelessWidget {
  WelcomePageButtons({Key? key, required this.textName}) : super(key: key);
  String textName;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: height / 27, right: height / 27),
      child: Container(
        height: height / 12,
        decoration: BoxDecoration(
            color: Color(0xEB006EFF),
            borderRadius: BorderRadius.all(Radius.circular(height / 25))),
        child: Center(
          child: Text(
            textName,
            style: TextStyle(
                fontSize: height / 36,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
