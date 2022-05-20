import 'package:flutter/material.dart';
import 'package:sh_mobiledev_proj_2/components/components.dart';

import 'screens.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEEEDF3),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/setting_right.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                16,
                8,
                16,
                8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/logo.png',
                      scale: 1,
                      color: Color(0xff1F319D),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Create new account',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          fontSize: 20),
                      // style: GoogleFonts.goldman(),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const InputField(
                    hintText: 'Email',
                    isHidden: false,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const InputField(
                    hintText: 'Password',
                    isHidden: true,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const InputField(
                    hintText: 'Confirm password',
                    isHidden: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputButton(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                    text: 'Sign up',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      '.  Or sign in with -',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/socialMedia.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
