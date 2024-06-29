import 'package:bluepython/component/third_feature_container.dart';
import 'package:flutter/material.dart';
import 'package:bluepython/component/small_feature_container.dart';
import 'package:bluepython/component/text.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer({Key? key}) : super(key: key);

  Widget _buildFeatureDescription() {
    return Column(
      children: [
        const Text(
          "Blue Python's",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 48,
          ),
        ),
        const GradientText(
          text: 'Sophisticated AI',
          gradient: LinearGradient(
            colors: [
              Color(0xff7670ff),
              Color(0xff27cffd),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 48,
          ),
        ),
        Container(
          width: 500,
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Based on deep learning, thousands of variables are recalculated every minute to select the most accurate investment instruments for professionals.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFeatureDescription(),
        const SizedBox(height: 150),
        Container(
          height: 400,
          child: const SmallFeatureContainer(
            icon: Icons.dashboard_outlined,
            title: "Absolute Control for Fund",
            description: "Define your own risk level, blacklist and whitelist for any portfolio to be managed autonomously.",
            imagePath: 'assets/01.png',
            imagePosition: 'right',
          ),
        ),
        const SizedBox(height: 70),
        Container(
          height: 400,
          child: const SmallFeatureContainer(
            icon: Icons.saved_search_outlined,
            title: "Ready-to-go in Major Markets",
            description: "Blue Python is ready to manage your portfolio on BIST, S&P 500, Binance or Forex markets tailored \n to your defined risk level and starts immediately.",
            imagePath: 'assets/02.png',
            imagePosition: 'left',
          ),
        ),
        const SizedBox(height: 70),
        Container(
          height: 400,
          child: const ThirdFeatureContainer(
            icon: Icons.trending_up,
            title: "Proven Track-Record",
            imagePath: 'assets/03.png',
            imagePosition: 'right',
          ),
        ),
      ],
    );
  }
}
