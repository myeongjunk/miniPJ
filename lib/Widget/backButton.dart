import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  const backButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0.0),
      icon: Icon(Icons.arrow_back_ios_new_rounded),
      color: Color(0xff353c49),
      onPressed: () {},
    );
  }
}
