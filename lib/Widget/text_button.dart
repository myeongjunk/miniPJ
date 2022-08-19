import 'package:flutter/material.dart';

class buttonName extends StatelessWidget {
  String inputStr;

  buttonName(this.inputStr);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        '${inputStr}',
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'PretendardVariable',
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      onPressed: () {},
    );
  }
}
