import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_colors.dart' as AppColors;

class AppTab extends StatelessWidget {
  final Color color;
  final String text;
  const AppTab({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.menu2Color,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 7,
                offset: Offset(0, 0))
          ]),
      child: const Text(
        'Popular',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
