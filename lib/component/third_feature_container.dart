import 'package:flutter/material.dart';
import 'package:bluepython/component/icon.dart';

class ThirdFeatureContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String imagePath;
  final String imagePosition;

  const ThirdFeatureContainer({
    required this.icon,
    required this.title,
    required this.imagePath,
    required this.imagePosition,
    Key? key,
  }) : super(key: key);

  Widget _buildSuccessRateColumn(String value, String title1, String title2, Color gradientColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildValueText(value.substring(0, value.length - 1)),
            _buildGradientText('%', gradientColor),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title1,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          title2,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildGradientText(String text, Color gradientColor) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Color(0xff7670ff), Color(0xff27cffd)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildValueText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 40,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageWidget = Container(
      width: 400,
      height: 1000,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff27cffd), Color(0xff7670ff)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Image.asset(imagePath, width: 200, height: 200),
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GradientIconContainer(
          icon: icon,
          size: 40,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 40,
          ),
        ),
        Row(
          children: [
            _buildSuccessRateColumn('~92%', 'Spot Transactions', 'Success Rate', Colors.blue),
            _buildSuccessRateColumn('~78%', 'Futures Transactions', 'Success Rate', Colors.blue),
          ],
        ),
        _buildSuccessRateColumn('4%', 'Active ETF\'s', 'Automatically Managed', Colors.white),
      ],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: imagePosition == 'left'
          ? [imageWidget, const SizedBox(width: 20), content]
          : [content, const SizedBox(width: 20), imageWidget],
    );
  }
}
