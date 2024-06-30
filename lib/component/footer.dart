import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1b1725),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      'assets/logo.png',
                      scale: 8,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Real time AI-powered trading',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                onTap: () => _launchURL(Uri.parse('https://www.linkedin.com/company/blue-python-platform/')),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                           color: Colors.white,
                    scale: 4,
                    'assets/linkedin-icon.png', // Doğru dosya yolu
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () => _launchURL(Uri.parse('https://x.com/Blue_Python_Plt')),
                child: Image.asset(
                  'assets/twitter-icon.png', // Doğru dosya yolu
                  width: 50,
                  height: 50,
                ),
              ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Main',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  HoverTextButton(
                    text: 'Home',
                    onPressed: () {
                      // Add action for Home button
                    },
                  ),
                  HoverTextButton(
                    text: 'Blog',
                    textColor: Colors.white,
                    onPressed: () {
                      // Add action for Blog button
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Utilities',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  HoverTextButton(
                    text: 'Style Guide',
                    onPressed: () {
                      // Add action for Style Guide button
                    },
                  ),
                  HoverTextButton(
                    text: 'Licenses',
                    onPressed: () {
                      // Add action for Licenses button
                    },
                  ),
                  HoverTextButton(
                    text: 'Changelog',
                    onPressed: () {
                      // Add action for Changelog button
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.white54),
          const SizedBox(height: 10),
          const Text(
            '© 2024 BluePython Teknoloji A.Ş.',
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }

   void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}

class HoverTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  const HoverTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(
            color: _isHovered ?  Color(0xff7670ff) : widget.textColor,
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Footer Example'),
        ),
        body: const Center(
          child: Text('Main Content'),
        ),
        bottomNavigationBar: const Footer(),
      ),
    );
  }
}
