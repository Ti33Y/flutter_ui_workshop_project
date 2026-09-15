import 'package:flutter/material.dart';
import 'e03_page_ui.dart';
import 'e04_page_ui.dart';

class E02PageUI extends StatefulWidget {
  const E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // รูปด้านบน
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Stack(
                  children: [

                    ClipPath(
                      child: Image.asset(
                        'assets/images/img_orange2.png',
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),

                    // ปุ่มย้อนกลับ
                    Positioned(
                      left: 14,
                      top: 32,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.white70,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(
                  34,
                  0,
                  34,
                  25,
                ),
                child: Column(
                  children: [

                    const SizedBox(height: 5),

                    // Welcome back
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    const SizedBox(height: 3),

                    // Login to your account
                    const Text(
                      'Login to your account',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Email / Phone
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter email or phone',
                        hintStyle: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 14,
                        ),
                        enabledBorder:
                            OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            color: Color(0xFFD0D0D0),
                            width: 1,
                          ),
                        ),
                        focusedBorder:
                            OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFB52E),
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Password
                    TextField(
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),

                        contentPadding:
                            const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 14,
                        ),

                        suffixIcon: IconButton(
                          padding: EdgeInsets.zero,
                          iconSize: 19,
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible =
                                  !passwordVisible;
                            });
                          },
                        ),

                        enabledBorder:
                            OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            color: Color(0xFFD0D0D0),
                            width: 1,
                          ),
                        ),

                        focusedBorder:
                            OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFB52E),
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 30),
                          tapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  const E04PageUI(),
                            ),
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFFFFB52E),
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFFF9800),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                          ),
                        ),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // OR
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Color(0xFFFFDFA0),
                            thickness: 1,
                          ),
                        ),

                        const Padding(
                          padding:
                              EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight:
                                  FontWeight.w700,
                            ),
                          ),
                        ),

                        const Expanded(
                          child: Divider(
                            color: Color(0xFFFFDFA0),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 21),

                    // Social Login
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

                    const SizedBox(height: 25),

                    // Create Account
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [

                        const Text(
                          "Don't have an Account? ",
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    const E03PageUI(),
                              ),
                            );
                          },
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 9,
                              color: Color(0xFFFFB52E),
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
