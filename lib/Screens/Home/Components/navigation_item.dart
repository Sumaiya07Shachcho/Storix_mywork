
import 'package:flutter/material.dart';

class NavigationBarItemWidget extends StatelessWidget {
  const NavigationBarItemWidget({
    Key? key,
    required this.index,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  
  final int index;
  final IconData icon;
  final bool isSelected;
  final ValueChanged<int> onTap;

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        onTap(index);
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: isSelected ? const Color(0xFF006EFF) : null),
            const SizedBox(height: 8,),
            //Text(label, style: TextStyle(fontSize: 11, color: isSelected ? Colors.purple : null, fontWeight: isSelected ? FontWeight.bold : null),)
          ],
        ),
      ),
    );
  }
}
