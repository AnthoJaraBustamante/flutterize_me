import 'package:flutter/material.dart';
import 'package:flutterize_me/app/constants/app_colors.dart';
import 'package:flutterize_me/widgets/extensions.dart';
import 'package:flutterize_me/widgets/size_box_int.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../app/data/model/providers_model.dart';
import 'services_chip.dart';

class ProviderCard extends StatelessWidget {
  const ProviderCard({
    super.key,
    required this.data,
  });

  final ProviderModel data;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      height: 300,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.getColor(ColorName.transparentdDark)),
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/${data.avatar}.png',
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Symbols.star_rate_rounded,
                weight: 4000,
              ),
              Text(
                data.score.toStringAsFixed(1),
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: AppColors.getColor(ColorName.primary),
                  fontSize: 14,
                  fontFamily: 'Satoshi Variable',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.10,
                ),
              ),
            ],
          ).marginSymmetric(vertical: 8),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.getColor(ColorName.primary),
              fontSize: 18,
              fontFamily: 'Satoshi Variable',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.15,
            ),
          ),
          4.height,
          SizedBox(
            width: 295,
            child: Text(
              data.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.getColor(ColorName.darkGreyBlue),
                fontSize: 14,
                fontFamily: 'Satoshi Variable',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.50,
              ),
            ),
          ),
          16.height,
          SizedBox(
            width: 295,
            child: Wrap(
              spacing: 8,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                ...data.services.map(
                  (e) => ServiceChip(title: e.title, icon: e.icon),
                ),
              ],
            ),
          ),
        ],
      ),
    ).marginSymmetric(horizontal: 16);
  }
}
