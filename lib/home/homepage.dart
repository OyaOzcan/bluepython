import 'package:bluepython/component/footer.dart';
import 'package:bluepython/component/icon.dart';
import 'package:bluepython/component/meet_container.dart';
import 'package:bluepython/component/navbar.dart';
import 'package:flutter/material.dart';
import 'package:bluepython/component/text.dart';
import 'package:flutter/widgets.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final ScrollController _scrollController = ScrollController();
//   final GlobalKey _featureContainerKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff1b1725),
//       appBar: AppBar(
//         backgroundColor: const Color(0xff1b1725),
//         elevation: 0,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Image.asset(
//                   'assets/logo.png',
//                   scale: 4,
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 _buildNavItem('HOME', true),
//                 _buildNavItem('FEATURES'),
//                 _buildNavItem('INTEGRATIONS'),
//                 _buildNavItem('PRICING'),
//                 _buildNavItem('FAQS'),
//               ],
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.white.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   child: Text(
//                     'CONTACT US',
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Center(
//           child: Column(
//             children: [
//               _buildMainContainer(),
//               Container(
//                 height: 100,
//               ),
//               Padding(
//                 key: _featureContainerKey, // Feature container için GlobalKey ataması
//                 padding: const EdgeInsets.symmetric(horizontal: 100.0),
//                 child: _buildFeatureContainer(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildMainContainer() {
//     return Container(
//       height: 450,
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Column(
//             children: [
//               const Text(
//                 'AI Powered',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w700,
//                   fontSize: 64,
//                 ),
//               ),
//               const GradientText(
//                 text: 'Algorithmic Trading',
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xff7670ff),
//                     Color(0xff27cffd),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 style: TextStyle(
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w700,
//                   fontSize: 64,
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: 500,
//             padding: const EdgeInsets.all(16.0),
//             child: const Text(
//               'We monitor the markets 24/7 and automatically manage your investments with our sophisticated AI algorithm at specified risk levels you define',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontFamily: 'Open Sans',
//                 fontWeight: FontWeight.w300,
//                 fontSize: 18,
//               ),
//             ),
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.transparent,
//               side: const BorderSide(color: Colors.white),
//             ),
//             onPressed: () {
//               _scrollToFeatures();
//             },
//             child: const Text(
//               'View Features',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _scrollToFeatures() {
//     final keyContext = _featureContainerKey.currentContext;
//     if (keyContext != null) {
//       Scrollable.ensureVisible(
//         keyContext,
//         duration: const Duration(seconds: 1),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   Widget _buildNavItem(String title, [bool isActive = false]) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Text(
//         title,
//         style: TextStyle(
//           color: isActive ? const Color(0xff7670ff) : Colors.white,
//           fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
//           fontSize: 16,
//         ),
//       ),
//     );
//   }

//   Widget _buildFeatureDescription() {
//     return Column(
//       children: [
//         const Text(
//           "Blue Python's",
//           style: TextStyle(
//             color: Colors.white,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w700,
//             fontSize: 48,
//           ),
//         ),
//         const GradientText(
//           text: 'Sophisticated AI',
//           gradient: LinearGradient(
//             colors: [
//               Color(0xff7670ff),
//               Color(0xff27cffd),
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           style: TextStyle(
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w700,
//             fontSize: 48,
//           ),
//         ),
//         Container(
//           width: 500,
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Based on deep learning, thousands of variables are recalculated every minute to select the most accurate investment instruments for professionals.',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.white,
//               fontFamily: 'Open Sans',
//               fontWeight: FontWeight.w300,
//               fontSize: 18,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildFeatureContainer() {
//     return Column(
//       children: [
//         _buildFeatureDescription(),
//         SizedBox(height: 150),
//         Container(
//           height: 400,
//           child: _buildSmallFeatureContainer(
//             icon: Icons.dashboard_outlined,
//             title: "Absolute Control for Fund",
//             description:
//                 "Define your own risk level, blacklist and whitelist for any portfolio to be managed autonomously.",
//             imagePath: 'assets/01.png',
//             imagePosition: 'right',
//           ),
//         ),
//         SizedBox(height: 70),
//         Container(
//           height: 400,
//           child: _buildSmallFeatureContainer(
//             icon: Icons.saved_search_outlined,
//             title: "Ready-to-go in Major Markets",
//             description:
//                 "Blue Python is ready to manage your portfolio on BIST, S&P 500, Binance or Forex markets tailored \n to your defined risk level and starts immediately.",
//             imagePath: 'assets/02.png',
//             imagePosition: 'left',
//           ),
//         ),
//         SizedBox(height: 70),
//         Container(
//           height: 400,
//           child: _buildThirdFeatureContainer(
//             icon: Icons.trending_up,
//             title: "Proven Track-Record",
//             imagePath: 'assets/03.png',
//             imagePosition: 'right',
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildSmallFeatureContainer({
//     required IconData icon,
//     required String title,
//     required String description,
//     required String imagePath,
//     required String imagePosition,
//   }) {
//     final imageWidget = Container(
//       width: 400,
//       height: 1000,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xff27cffd), Color(0xff7670ff)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Image.asset(imagePath, width: 200, height: 200),
//     );

//     final content = Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         GradientIconContainer(
//           icon: icon,
//           size: 40,
//         ),
//         const SizedBox(height: 20),
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w600,
//             fontSize: 40,
//           ),
//         ),
//         const SizedBox(height: 20),
//         Text(
//           description,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             color: Colors.white,
//             fontFamily: 'Open Sans',
//             fontWeight: FontWeight.w300,
//             fontSize: 18,
//           ),
//         ),
//       ],
//     );

//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: imagePosition == 'left'
//           ? [imageWidget, const SizedBox(width: 20), content]
//           : [content, const SizedBox(width: 20), imageWidget],
//     );
//   }

//   Widget _buildSuccessRateColumn(
//       String value, String title1, String title2, Color gradientColor) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildValueText(value.substring(0, value.length - 1)),
//             _buildGradientText('%', gradientColor),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Text(
//           title1,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontFamily: 'Open Sans',
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Text(
//           title2,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontFamily: 'Open Sans',
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildThirdFeatureContainer({
//     required IconData icon,
//     required String title,
//     required String imagePath,
//     required String imagePosition,
//   }) {
//     final imageWidget = Container(
//       width: 400,
//       height: 1000,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xff27cffd), Color(0xff7670ff)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Image.asset(imagePath, width: 200, height: 200),
//     );

//     final content = Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         GradientIconContainer(
//           icon: icon,
//           size: 40,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w600,
//             fontSize: 40,
//           ),
//         ),
//         Row(
//           children: [
//             _buildSuccessRateColumn(
//                 '~92%', 'Spot Transactions', 'Success Rate', Colors.blue),
//             _buildSuccessRateColumn(
//                 '~78%', 'Futures Transactions', 'Success Rate', Colors.blue),
//           ],
//         ),
//         _buildSuccessRateColumn(
//             '4%', 'Active ETF\'s', 'Automatically Managed', Colors.white),
//       ],
//     );

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: imagePosition == 'left'
//           ? [imageWidget, const SizedBox(width: 20), content]
//           : [content, const SizedBox(width: 20), imageWidget],
//     );
//   }

//   Widget _buildGradientText(String text, Color gradientColor) {
//     return ShaderMask(
//       shaderCallback: (bounds) => const LinearGradient(
//         colors: [Color(0xff7670ff), Color(0xff27cffd)],
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//       ).createShader(bounds),
//       child: Text(
//         text,
//         style: const TextStyle(
//           fontSize: 24,
//           fontFamily: 'Inter',
//           fontWeight: FontWeight.w700,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   Widget _buildValueText(String text) {
//     return Text(
//       text,
//       style: const TextStyle(
//         fontSize: 40,
//         fontFamily: 'Inter',
//         fontWeight: FontWeight.w700,
//         color: Colors.white,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:bluepython/component/main_container.dart';
import 'package:bluepython/component/feature_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _featureContainerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1725),
      appBar: const NavBar(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: Column(
            children: [
              MainContainer(onViewFeatures: _scrollToFeatures),
              Container(height: 100),
              Padding(
                key: _featureContainerKey,
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: const FeatureContainer(),
              ),
              MeetContainer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollToFeatures() {
    final keyContext = _featureContainerKey.currentContext;
    if (keyContext != null) {
      Scrollable.ensureVisible(
        keyContext,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}
