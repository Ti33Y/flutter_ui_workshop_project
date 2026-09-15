import 'package:flutter/material.dart';
import 'e02_page_ui.dart';

class E03PageUI extends StatelessWidget {
  const E03PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // รูปด้านบน
              // =========================
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Image.asset(
                  'assets/images/img_orange2.png',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),

              // =========================
              // เนื้อหา
              // =========================
              Padding(
                padding: const EdgeInsets.fromLTRB(34, 0, 34, 25),
                child: Column(
                  children: [
                    const SizedBox(height: 5),

                    // Register
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      'Create your new account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        //color: Colors.black54,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // =========================
                    // Name
                    // =========================
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 15,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFD8D8D8),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFB52E),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // =========================
                    // E-mail
                    // =========================
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 15,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFD8D8D8),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFB52E),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // =========================
                    // Phone
                    // =========================
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 15,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFD8D8D8),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFB52E),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // =========================
                    // Password
                    // =========================
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 15,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFD8D8D8),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFB52E),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // =========================
                    // Privacy Policy
                    // =========================
                    const Text.rich(
                      TextSpan(
                        text: 'By logging/signing-up you ',
                        children: [
                          TextSpan(
                            text: 'accept & acknowledge',
                            style: TextStyle(color: Colors.orange),
                          ),
                          TextSpan(text: '\nof our '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 13),

                    // =========================
                    // Sign Up
                    // =========================
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF9800),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // =========================
                    // OR
                    // =========================
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(color: Color(0xFFFFE0A6)),
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                            ),
                          ),
                        ),

                        const Expanded(
                          child: Divider(color: Color(0xFFFFE0A6)),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // =========================
                    // Social Login
                    // =========================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/img_g.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          'assets/images/img_f.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          'assets/images/img_a.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // =========================
                    // Login
                    // =========================
                    Wrap(
                      children: [
                        const Text(
                          'Already have an Account? ',
                          style: TextStyle(fontSize: 10),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const E02PageUI(),
                              ),
                            );
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
