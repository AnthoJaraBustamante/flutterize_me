import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterize_me/app/constants/app_colors.dart';
import 'package:flutterize_me/app/data/model/providers_model.dart';
import 'package:flutterize_me/widgets/extensions.dart';
import 'package:flutterize_me/widgets/size_box_int.dart';

import 'package:material_symbols_icons/symbols.dart';

import '../../widgets/provider_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final providers = <ProviderModel>[
      ProviderModel(
        avatar: 'first',
        score: 4.9,
        title: 'Terca Cooperativa Carpinteria',
        description: 'Let\'s design the furniture you need to harmonize your space.',
        services: [
          Services(title: 'Furniture and shelves', icon: Symbols.newsstand_rounded),
          Services(title: 'Wooden frames', icon: Symbols.wall_art),
          Services(title: 'More', icon: Icons.more_horiz_rounded),
        ],
      ),
      ProviderModel(
        avatar: 'second',
        score: 4.5,
        title: 'Carpinteria Pérez',
        description: 'Team of furniture makers, carpenters and locksmiths.',
        services: [
          Services(title: 'Plumbing', icon: Symbols.faucet),
          Services(title: 'Locksmith', icon: Symbols.key),
          Services(title: 'Furniture assembly', icon: Symbols.chair),
          Services(title: 'More', icon: Icons.more_horiz_rounded),
        ],
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          _buildGradientBackground(size),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.height,
                _buildTopAppBar(),
                _buildContent(size, providers),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildContent(Size size, List<ProviderModel> providers) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHero(),
            Opacity(
              opacity: 0.32,
              child: Container(
                width: size.width,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: AppColors.getColor(ColorName.grey)),
                  ),
                ),
              ),
            ).marginSymmetric(vertical: 31.5),
            _buildSectionBook(providers),
          ],
        ),
      ),
    );
  }

  Container _buildGradientBackground(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.41,
            -0.91,
          ),
          end: const Alignment(-0.41, 0.91),
          colors: [AppColors.getColor(ColorName.background), Colors.white],
        ),
      ),
    );
  }

  Column _buildSectionBook(List<ProviderModel> providers) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Book your visit',
          style: TextStyle(
            color: AppColors.getColor(ColorName.darkGrey),
            fontSize: 18,
            fontFamily: 'Satoshi Variable',
            fontWeight: FontWeight.w600,
            letterSpacing: 0.15,
          ),
        ).marginSymmetric(horizontal: 16),
        30.height,
        CarouselSlider(
          items: providers.map((provider) => ProviderCard(data: provider)).toList(),
          options: CarouselOptions(
            height: 300,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
          ),
        ),
        40.height,
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.getColor(ColorName.primary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(999),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                alignment: Alignment.center,
                child: Text(
                  'Start today',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.getColor(ColorName.background),
                    fontSize: 14,
                    fontFamily: 'Satoshi Variable',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ],
          ),
        ).marginSymmetric(horizontal: 16),
        16.height,
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Maybe later, thanks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.getColor(ColorName.secondary),
                  fontSize: 14,
                  fontFamily: 'Satoshi Variable',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.50,
                ),
              ),
            ],
          ),
        ).marginSymmetric(horizontal: 16),
        80.height,
      ],
    );
  }

  Column _buildSectionHero() {
    return Column(
      children: [
        Text(
          'Do you need help at home? Schedule services in a jiffy!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.getColor(ColorName.primary),
            fontSize: 24,
            fontFamily: 'Satoshi Variable',
            fontWeight: FontWeight.w600,
          ),
        ).marginSymmetric(horizontal: 16),
        20.height,
        Text(
          'Organize your meetings by reserving common spaces, add visitors and send them invitations.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.getColor(ColorName.accent),
            fontSize: 16,
            fontFamily: 'Satoshi Variable',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
        ).marginSymmetric(horizontal: 16),
      ],
    );
  }

  Widget _buildTopAppBar() {
    return Text(
      'EdiPro',
      style: TextStyle(
        color: AppColors.getColor(ColorName.primary),
        fontSize: 24,
        fontFamily: 'Satoshi Variable',
        fontWeight: FontWeight.w600,
      ),
    ).marginSymmetric(vertical: 8, horizontal: 16).marginOnly(bottom: 16);
  }
}
