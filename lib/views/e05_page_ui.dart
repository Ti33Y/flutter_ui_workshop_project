import 'package:flutter/material.dart';
import 'e06_page_ui.dart';

class E05PageUI extends StatefulWidget {
  const E05PageUI({super.key});

  @override
  State<E05PageUI> createState() => _E05PageUIState();
}

class _E05PageUIState extends State<E05PageUI> {
  final List<TextEditingController> controllers =
      List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    for (final c in controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(35, 30, 35, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.chevron_left),
                    color: Color(0xFFFF9800),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'OTP Verification',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),

              const SizedBox(height: 55),

              Center(
                child: Image.asset(
                  'assets/images/img_orange3.png',
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'Enter OTP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                'A 4 digit code has been sent to your\nemail',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: List.generate(4, (index) {
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: index == 3 ? 0 : 8,
                      ),
                      child: TextField(
                        controller: controllers[index],
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Color(0xFFE9E9E9),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 13),

              Center(
                child: Text.rich(
                  const TextSpan(
                    text: 'You have not received OTP in ',
                    children: [
                      TextSpan(
                        text: '30 seconds',
                        style: TextStyle(
                          color: Color(0xFFFFB52E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const E06PageUI(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF9800),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
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