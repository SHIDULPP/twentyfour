import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFE2C6),
      body: SafeArea(
        child: Stack(
          children: [
            /// TOP CONTENT (Logo, Title, Subtitle, Mockup)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 80, // Space for bottom card
              child: Column(
                children: [
                  const SizedBox(height: 24),

                  /// LOGO
                  Image.asset(
                    'assets/24connect.png',
                    height: 48,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 24),

                  /// TITLE
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Connect. Participate.\nGrow.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            height: 1.3,
                          ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  /// SUBTITLE
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'Be part of your community – join events, engage with groups, and access resources that help you grow together.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black54,
                        height: 1.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// PHONE MOCKUP IMAGE - extends behind card
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 30,
                            offset: const Offset(0, 20),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset(
                          'assets/login_mockup.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// BOTTOM CARD - overlaps mockup image
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Let's Get Started",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Enter your mobile number or email to continue',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                    ),

                    const SizedBox(height: 20),

                    /// INPUT FIELD
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Enter your mobile number or email',
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFE0E0E0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      "We'll send you a verification code",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),

                    const SizedBox(height: 24),

                    /// CONTINUE BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
