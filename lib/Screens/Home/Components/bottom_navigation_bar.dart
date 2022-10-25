import 'package:flutter/material.dart';
import 'navigation_item.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<BottomNavigationWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  var selectedIndex = 0;
  void handleSelectedItem(int index){
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        margin: EdgeInsets.only(right: 20, left: 20, bottom: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD2E6FF),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItemWidget(
              index: 0,
              icon: Icons.home,
              isSelected: (selectedIndex == 0),
              onTap: handleSelectedItem,
            ),
            NavigationBarItemWidget(
              index: 1,
              icon: Icons.group,
              isSelected: (selectedIndex == 1),
              onTap: handleSelectedItem,
            ),
            NavigationBarItemWidget(
              index: 2,
              icon: Icons.dashboard,
              isSelected: (selectedIndex == 2),
              onTap: handleSelectedItem,
            ),
            NavigationBarItemWidget(
              index: 3,
              icon: Icons.person_pin,
              isSelected: (selectedIndex == 3),
              onTap: handleSelectedItem,
            ),
          ],
        ),
      ),
    );
  }
} 

