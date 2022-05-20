import 'package:flutter/material.dart';
import 'screens.dart';
import '../components/constants.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({Key? key}) : super(key: key);

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightRed.withOpacity(0.4),
          elevation: 0,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined, color: black),
              iconSize: 25,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const SignUpScreen(),
                  ),
                );
              }),
          title: const Text("Fix MicroWave",
              style: TextStyle(fontWeight: FontWeight.bold, color: black)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          _displayContainer(_size),
          const SizedBox(height: kPadding * 3), //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Column(children: <Widget>[
              GestureDetector(
                child: _reviewContainer(),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Cart();
                  }));
                },
              ),
              const SizedBox(height: kPadding * 2.5),
              Column(children: <Widget>[
                _priceMenu("Repair", "\$25"),
                const SizedBox(height: kPadding * 2.5),
                _priceMenu("Setup", "\$12")
              ])
            ]),
          )
        ])));
  }

  Row _reviewContainer() {
    return Row(
      children: [
        Expanded(
          child: _button(
            Text(
              "Reviews",
              style: TextStyle(
                  fontSize: fontSizeX2,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            color: lightRed,
          ),
        ),
        const SizedBox(width: kPadding * 3),
        _button(
            const Icon(Icons.message_rounded, color: Colors.white, size: 25),
            color: black)
      ],
    );
  }

  Container _priceMenu(String lText, String rText) {
    return Container(
        padding: const EdgeInsets.all(kPadding * 1.45),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(offset: Offset(0, 0), blurRadius: 1.25, color: lowDark)
            ]),
        child: Row(
          children: <Widget>[
            Text(lText,
                style: const TextStyle(
                    fontSize: fontSizeX1, fontWeight: FontWeight.bold)),
            const Spacer(),
            Text(rText,
                style: const TextStyle(
                    fontSize: fontSizeX1, fontWeight: FontWeight.bold))
          ],
        ));
  }

  Container _displayContainer(Size _size) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(kPadding * 2.5),
        child: Container(
          decoration: const BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 15),
                blurRadius: 20,
                spreadRadius: 10)
          ]),
          child: const Image(image: AssetImage("assets/images/microwave.png")),
        ),
        height: _size.height * 0.425,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0)),
          color: lightRed.withOpacity(0.4),
          image: const DecorationImage(
              image: AssetImage("assets/images/peach.png"),
              alignment: Alignment.bottomRight),
        ));
  }

  Widget _button(Widget child, {required Color color}) {
    return GestureDetector(
      // onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: kPadding * 1.3, horizontal: kPadding * 1.5),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 0), blurRadius: 2, color: Colors.black26)
            ]),
        child: child,
      ),
    );
  }
}
