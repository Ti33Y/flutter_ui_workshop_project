
import 'package:flutter/material.dart';
import 'e02_page_ui.dart';

class E01PageUI extends StatelessWidget {
  const E01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 30, 28, 26),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/img_orange1.png',
                width: 250,
                height: 390,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 8),
              const Text(
                'BERRY JUIICE',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .4,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'A Moment of healthy sip\nThe best variant for your health',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  height: 1.35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const E02PageUI()),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text('Explore Now',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )),
                      Spacer(),
                      Icon(Icons.chevron_right, size: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
