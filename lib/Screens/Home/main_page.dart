// ignore: file_names
import 'package:flutter/material.dart';
import 'package:storix/Screens/Home/Home.dart';
import 'Components/bottom_navigation_bar.dart';


class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = [
    const Home(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: pageIndex, 
        builder: (BuildContext context, int value, _){
          return pages[value];
        }
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onItemSelected: (index){
          pageIndex.value = index;
        },
      ),
    );
  }
}
