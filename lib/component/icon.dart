import 'package:flutter/material.dart';

class GradientIconContainer extends StatelessWidget {
  final IconData icon;
  final double size;

  const GradientIconContainer({
    Key? key,
    required this.icon,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Color(0xff7670ff), Color(0xff27cffd)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Container(
          width: size - 5,
          height: size - 5,
          decoration: BoxDecoration(
            color: const Color(0xff1b1725),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: size / 2,
            ),
          ),
        ),
      ),
    );
  }
}
