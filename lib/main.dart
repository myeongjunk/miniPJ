import 'package:flutter/material.dart';
import 'package:minipj/Page/addPage.dart';
import 'package:minipj/Page/mainLoginPage.dart';
import 'package:minipj/Widget/mybackbutton.dart';
import 'package:minipj/Widget/text_button.dart';

void main() {
  runApp(const minipj());
}

class minipj extends StatelessWidget {
  const minipj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PJ(),
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontFamily: 'PretendardVariable',
          ),
        ),
      ),
    );
  }
}

class PJ extends StatelessWidget {
  const PJ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 9.47,
          height: 16.22,
          child: mybackbutton(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            color: Colors.black,
            onPressed: () {
              GestureDetector(/*용어추가페이지로 이동*/);
            },
          )
        ],
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(95, 20, 95, 0),
                child: Text(
                  '무엇이 궁금한가요?',
                  style: TextStyle(
                    fontFamily: 'PretendardVariable',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 38, 24, 0),
                child: SizedBox(
                  width: 327,
                  height: 44,
                  child: TextField(
                    cursorColor: Color(0xffff9119),
                    decoration: InputDecoration(
                      counterText: '',
                      hintText: '내용을 입력해주세요.',
                      prefixIcon: SizedBox(
                        width: 18,
                        height: 18,
                        child: Icon(Icons.search),
                      ),
                      filled: true,
                      fillColor: Color(0xfff5f6f8),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xfff5f6f8)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xfff5f6f8)),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(0, 13, 0, 11),
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 7, 33, 1),
                child: Container(
                  height: 46,
                  width: 318,
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: buttonName('전체')),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: buttonName('학교생활')),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: buttonName('강의관련')),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: buttonName('시설'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 327,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0.0,
                  color: const Color(0xfff5f6f8),
                  child: const SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 21),
                      child: Text(
                        'aa',
                        style: TextStyle(
                          fontFamily: 'PretendardVariable',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

TextStyle buttonText({bool resposible = false, double? height, Color? color}) {
  return const TextStyle(
    color: Colors.black,
    fontFamily: 'PretendardVariable',
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
}
