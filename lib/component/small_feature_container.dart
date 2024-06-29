import 'package:flutter/material.dart';
import 'package:bluepython/component/icon.dart';

class SmallFeatureContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String imagePath;
  final String imagePosition;

  const SmallFeatureContainer({
    required this.icon,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.imagePosition,
    Key? key,
  }) : super(key: key);

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
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 40,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: imagePosition == 'left'
          ? [imageWidget, const SizedBox(width: 20), content]
          : [content, const SizedBox(width: 20), imageWidget],
    );
  }
}
