import 'package:flutter/material.dart';
import 'package:bluepython/component/text.dart';

class MainContainer extends StatelessWidget {
  final VoidCallback onViewFeatures;

  const MainContainer({required this.onViewFeatures, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                'AI Powered',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 64,
                ),
              ),
              const GradientText(
                text: 'Algorithmic Trading',
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
                  fontSize: 64,
                ),
              ),
            ],
          ),
          Container(
            width: 500,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'We monitor the markets 24/7 and automatically manage your investments with our sophisticated AI algorithm at specified risk levels you define',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.white),
            ),
            onPressed: onViewFeatures,
            child: const Text(
              'View Features',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
