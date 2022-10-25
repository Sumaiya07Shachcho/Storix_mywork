import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    var _MediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F6),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF006EFF),
                    ),
                  ),
                ),
                Container(
                  child: Image.asset("images/Authentication-rafiki.png"),
                  height: 350,
                ),
                MyTextfield(hintText: 'Enter Email', labelText: 'Enter Email'),
                MyTextfield(
                    hintText: 'Enter Password', labelText: 'Enter Password'),
                SizedBox(
                  height: 40,
                ),
                MyButton(ButtonText: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final String ButtonText;
  const MyButton({Key? key, required this.ButtonText}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    var _MediaQuery = MediaQuery.of(context);
    return Container(
      child: GestureDetector(
        onTap: () => {},
        child: Container(
          alignment: Alignment.center,
          height: 70,
          width: _MediaQuery.size.width * 0.8,
          decoration: BoxDecoration(
              color: Color(0xFF006EFF),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE),
                )
              ]),
          child: Text(
            widget.ButtonText,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class MyTextfield extends StatelessWidget {
  final String hintText;
  final String labelText;
  const MyTextfield({Key? key, required this.hintText, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _MediaQuerya = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        width: _MediaQuerya.size.width * 0.8,
        child: TextField(
          style: TextStyle(
            fontSize: 25,
            color: Color(0xFF000000),
          ),
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.only(
              left: 25,
              top: 20,
              bottom: 20,
              right: 20,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
    );
  }
}
