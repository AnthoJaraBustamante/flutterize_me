import 'package:flutter/material.dart';
import 'package:flutterize_me/app/constants/app_colors.dart';
import 'package:flutterize_me/widgets/extensions.dart';
import 'package:flutterize_me/widgets/size_box_int.dart';

class ServiceChip extends StatelessWidget {
  const ServiceChip({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: AppColors.getColor(ColorName.transparentdDark)),
            borderRadius: BorderRadius.circular(64),
          ),
          padding: EdgeInsets.zero),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.getColor(ColorName.darkBlue),
            size: 18,
            weight: 8000,
          ),
          8.width,
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.getColor(ColorName.darkBlue),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.50,
            ),
          ),
        ],
      ).marginOnly(left: 8, right: 12),
    );
  }
}
