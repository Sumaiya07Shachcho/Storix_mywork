import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storix/Screens/Welcome/components/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context)
        .size
        .height; //pick up random height with de screen
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // welcome text start
            Center(
                child: Padding(
              padding: EdgeInsets.only(top: height / 13.67),
              child: Text('Welcome',
                  style: TextStyle(
                    color: Color(0xEB006EFF),
                    fontWeight: FontWeight.bold,
                    fontSize: height / 16,
                  )),
            )),

            // welcome text end

            // welcome image start
            Container(
              height: height / 2,
              width: double.infinity,
              child: Image.asset(
                  'lib/Screens/Welcome/components/img/welcome.png',
                  fit: BoxFit.cover),
            ),

            // welcome image end
            SizedBox(height: height / 20),
            //login button
            GestureDetector(
              onTap: () {
                print('login button click');
              },
              child: WelcomePageButtons(
                textName: 'Login',
              ),
            ),
            // between difference two buttons
            SizedBox(
              height: height / 25,
            ),

            // Sign up button

            GestureDetector(
              onTap: () {
                print('Sing up button click');
              },
              child: WelcomePageButtons(
                textName: 'Sign Up',
              ),
            ),

            // bottom space

            Flexible(
              child: Container(),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
