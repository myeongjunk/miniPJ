import 'package:flutter/material.dart';

class mainSearchPage extends StatelessWidget {
  const mainSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xffff9119),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(152, 181, 152, 0),
                  child: Image.asset("assets/image/book.png"),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(99, 7, 99, 0),
                    child: Text(
                      '한동용어사전',
                      style: TextStyle(
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w800,
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(41, 131, 40, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: '검색어를 입력하세요',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      suffixIcon: GestureDetector(
                          child: IconButton(
                            icon: Image.asset("assets/image/search.png"),
                            color: Colors.white,
                            onPressed: null,
                          ),
                          onTap: () {}),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    autofocus: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(118, 37, 118, 0),
                  child: SizedBox(
                    width: 139,
                    height: 35,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            '퀴즈 보러가기',
                            style: TextStyle(
                              color: Color(0xffff9199),
                              fontFamily: 'PretendardVariable',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Image.asset("assets/image/arrow.png"),
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
