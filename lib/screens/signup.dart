import 'package:flutter/material.dart';
import 'package:sh_mobiledev_proj_2/components/constants.dart';

import 'screens.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Stack(children: <Widget>[
        Image(
            image: const AssetImage("assets/images/undercoverbg.png"),
            height: _size.height * 0.4),
        _bodyContainer(_size)
      ]),
    ));
  }

  Widget _bodyContainer(Size size) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsetsDirectional.only(top: size.height * 0.1),
        padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: Image(image: AssetImage("assets/images/logo.png"))),
            _titlehead(),
            _inputText(title: "Email"),
            const SizedBox(height: 24),
            _inputText(title: "Password"),
            const SizedBox(height: 24),
            _inputText(title: "Confirm Password"),
            const SizedBox(height: 32),
            _inputButton(
              title: "Sign Up",
              tap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Broker();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            _titleheadextra(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buttonIcon(source: "assets/images/google.png"),
                  _buttonIcon(source: "assets/images/facebook.png"),
                  _buttonIcon(source: "assets/images/twitter.png")
                ])
          ],
        ),
      ),
    );
  }

  Widget _buttonIcon({required String source}) {
    //wrap with gesturedectector later
    return GestureDetector(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 0,
                spreadRadius: 0,
                color: lowDark)
          ], color: white, borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Image(image: AssetImage(source), height: 40, width: 40)),
    );
  }

  Padding _titlehead() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text("Create new account",
          style: TextStyle(
              color: black, fontSize: fontSizeX2, fontWeight: FontWeight.bold)),
    );
  }

  Padding _titleheadextra() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Text(". or Sign Up with -",
            style: TextStyle(
                color: lightBlack,
                fontSize: fontSizeX1,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Container _inputText({required String title}) {
    return Container(
      decoration: const BoxDecoration(
          color: lightWhite,
          boxShadow: [
            BoxShadow(
                offset: Offset(6, 4),
                blurRadius: 10,
                spreadRadius: 0,
                color: lowDark)
          ],
          borderRadius: BorderRadius.all(Radius.circular(5))),
      padding: const EdgeInsets.symmetric(
          vertical: kPadding * 0.5, horizontal: kPadding),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title,
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
        style: const TextStyle(
          color: lightBlack,
          fontSize: fontSizeX1,
        ),
      ),
    );
  }

  Widget _inputButton({required String title, Function()? tap}) {
    return GestureDetector(
      onTap: tap,
      child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: blue,
              boxShadow: [
                BoxShadow(
                    offset: Offset(6, 4),
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: blue)
              ],
              borderRadius: BorderRadius.all(Radius.circular(5))),
          padding: const EdgeInsets.symmetric(vertical: kPadding * 1.5),
          child: Text(title,
              style: const TextStyle(color: white, fontSize: fontSizeX2))),
    );
  }
}
