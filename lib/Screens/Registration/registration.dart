import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sign Up", style: TextStyle(color: Color(0xff006eff), fontSize: 40, fontWeight: FontWeight.w900),),
                  Image.asset("assets/images/fingerprint_rafiki.png"),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xff006eff)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                            )
                        ),
                      ),
                      child: const Text("Sign Up", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
