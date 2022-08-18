import 'package:flutter/material.dart';
import 'package:minipj/Page/addPage.dart';
import 'package:minipj/Page/mainLoginPage.dart';

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
      body: Container(
        color: Color(0xfff8eee0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(152, 181, 152, 0),
              child: Image.asset("assets/image/bookO.png"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(99, 7, 99, 0),
              child: Text(
                '한동용어사전',
                style: TextStyle(
                  fontFamily: 'PretendardVariable',
                  fontWeight: FontWeight.w800,
                  fontSize: 34,
                  color: Color(0xffff9119),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(52, 155, 53, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(width: 0.1),
                ),
                elevation: 0.0,
                color: Color(0xFfF8eee0),
                child: new InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(22, 12, 0, 13),
                            child: Image.asset("assets/image/google.png")),
                        Padding(
                            padding: EdgeInsets.fromLTRB(51, 15, 0, 17),
                            child: Text(
                              "구글 로그인",
                              style: TextStyle(
                                fontFamily: 'PretendardVariable',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff23241f),
                              ),
                            )),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 39, vertical: 15),
              child: Image.asset("assets/image/divider.png"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(52, 0, 53, 0),
              child: SizedBox(
                  width: 270,
                  height: 60,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    elevation: 0.0,
                    color: Color(0xFfFf9119),
                    child: new InkWell(
                      onTap: () {},
                      child: Center(
                          child: Text(
                        "로그인",
                        style: TextStyle(
                          fontFamily: 'PretendardVariable',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      )),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle buttonText({bool resposible = false, double? height, Color? color}) {
  return TextStyle(
    color: Colors.black,
    fontFamily: 'PretendardVariable',
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
}
