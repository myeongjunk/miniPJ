import 'package:flutter/material.dart';

class circularButton extends StatelessWidget {
  const circularButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 291, 0, 100),
      child: SizedBox(
          width: 91,
          height: 48,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              '완료',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'PretendardVariable',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xffff9119),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          )),
    );
  }
}
