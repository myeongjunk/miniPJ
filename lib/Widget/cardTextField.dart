import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  const backButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 14,
      ),
      child: const SizedBox(
        width: 327,
        child: TextField(
          decoration: InputDecoration(
            counterText: '',
            filled: true,
            fillColor: Color(0xfff5f6f8),
            border: OutlineInputBorder(),
            hintText: '내용을 입력해주세요.',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 1, color: Color(0xfff5f6f8)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 1, color: Color(0xfff5f6f8)),
            ),
            contentPadding: EdgeInsets.fromLTRB(25, 28, 0, 12),
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null, //엔터 입력 -> 텍스트필드 증가
        ),
      ),
    );
  }
}
