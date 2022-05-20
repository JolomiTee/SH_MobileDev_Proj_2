import 'package:flutter/material.dart';

import 'constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isHidden;
  const InputField({
    Key? key,
    required this.isHidden,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        color: lightWhite,
        height: 60,
        child: Center(
          child: TextField(
            obscureText: isHidden,
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: lightWhite,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: lightWhite,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: lightWhite,
                  width: 2,
                ),
              ),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ),
      ),
    );
  }
}
