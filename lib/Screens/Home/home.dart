import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storix/Screens/Home/Components/change_theme_button_widget.dart';
//import 'package:storix/Screens/Home/themes.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xff8dedfd),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.new_releases_rounded,color: const Color(0xff3d97e1)),
                        Text(
                          'New',
                          style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff3d97e1)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                      //color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_upward_rounded,color: const Color(0xff3d97e1)),
                        Text(
                          'Top',
                          style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff3d97e1)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*.13,),
                ChangeThemeButtonWidget(),
                Container(
                  width: 90,
                  height: 35,
                  // height: (MediaQuery.of(context).size.height*.025),
                  // width: (MediaQuery.of(context).size.width*.02),
                  decoration: BoxDecoration(
                    color: const Color(0xff8dedfd),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.settings,color: const Color(0xff3d97e1)),
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff3d97e1)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.6,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff94ebfa),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                             child: Column(
                              children: [
                                Text("@annonymous is feeling happy. 9.30PM",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lobsterTwo(fontSize: 17
                                    )
                                ),
                                Text("oluptatem accusantium doloremque laudantium, ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores",
                                    style: GoogleFonts.lobsterTwo(fontSize: 23)), //Container
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_up, size: 55, color: const Color(0xff8dedfd),),
                                    Text(
                                      '231',
                                      style: TextStyle(
                                        fontSize: 20,

                                      ),
                                    ),
                                    Icon(Icons.keyboard_arrow_down_sharp, size: 55,color: const Color(0xff8dedfd)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(

                              padding: const EdgeInsets.all(8.0),
                              child: Container(


                                decoration: BoxDecoration(
                                  //color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.save_as, size: 30,color: const Color(0xff8dedfd)),
                                    Text(
                                      'Saved',
                                        style: GoogleFonts.lobsterTwo(fontSize: 20)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
                ),
          )
        ],
      ),
    );
  }
}