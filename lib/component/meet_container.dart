import 'package:bluepython/component/text.dart';
import 'package:flutter/material.dart';

class MeetContainer extends StatefulWidget {
  const MeetContainer({super.key});

  @override
  State<MeetContainer> createState() => _MeetContainerState();
}

class _MeetContainerState extends State<MeetContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/small-logo.png', scale: 6, color: Colors.white,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GradientText(
              text: 'Meet',
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
            SizedBox(width: 10),
        const Text(
          "Blue Python",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 48,
          ),
        ),
          ],
        ),
        Container(
          width: 500,
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Start working with your new fully automated AI companion that manages your investments in accordance with your specified risk criterias 24/7',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w100,
              fontSize: 18,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff7670ff),
          ),
          onPressed: (){}, 
        child: const Text(
          "Get In Touch",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),),
        Image.asset('assets/04.png'),
      ],
    );
  }
}