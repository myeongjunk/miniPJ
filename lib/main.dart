import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen(),
      '/result': (context) => resultScreen(),
    },
  ));
}

class minipj extends StatelessWidget {
  const minipj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      theme: ThemeData(
        unselectedWidgetColor: Colors.black,
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            //홈화면으로가기
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(26, 26, 0, 0),
            child: const ImageIcon(
              AssetImage("assets/image/home.png"),
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(61, 231, 61, 0),
                child: Text(
                  '퀴즈를 시작하시겠습니까?',
                  style: TextStyle(
                    fontFamily: 'PretendardVariable',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 21),
                child: Text(
                  "총 10문제가 출제됩니다.",
                  style: TextStyle(
                    fontFamily: 'PretendardVariable',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(110.5, 248, 110.5, 0),
                child: SizedBox(
                  width: 154,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Row(
                            children: const <Widget>[
                              Text(
                                '시작하기',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PretendardVariable',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xffff9119),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
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

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(26, 26, 0, 0),
            child: ImageIcon(
              AssetImage("assets/image/home.png"),
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(80, 46, 79, 0),
                child: Column(
                  children: const <Widget>[
                    Center(
                        child: Text(
                      '\'한한\'은',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    )),
                    Text(
                      '무엇을 의미할까요?',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(291, 45, 53, 0),
              child: Text(
                '1/10',
                style: TextStyle(
                  color: Color.fromRGBO(255, 145, 25, 0.3),
                  fontFamily: 'PretendardVariable',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(53, 6, 52, 0),
              child: StepProgressIndicator(
                totalSteps: 10,
                currentStep: 1,
                size: 10,
                padding: 0,
                selectedColor: Color(0xffff9119),
                selectedSize: 13,
                unselectedColor: Color.fromRGBO(255, 145, 25, 0.3),
                roundedEdges: Radius.circular(10),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 74, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked1,
                            onChanged: (v) {
                              setState(() {
                                _isChecked1 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 74, 0, 0),
                  child: Text(
                    '한번 한소리',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 35, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked2,
                            onChanged: (v) {
                              setState(() {
                                _isChecked2 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 35, 0, 0),
                  child: Text(
                    '한동대 한식',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 35, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked3,
                            onChanged: (v) {
                              setState(() {
                                _isChecked3 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 35, 0, 0),
                  child: Text(
                    '한번에 한큐',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 35, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked4,
                            onChanged: (v) {
                              setState(() {
                                _isChecked4 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 35, 0, 0),
                  child: Text(
                    '한동 한바퀴',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 35),
              child: SizedBox(
                width: 154,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Row(
                          children: const <Widget>[
                            Text(
                              '다음으로',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'PretendardVariable',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xff000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class resultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(136, 147, 135, 0),
                child: Text(
                  '퀴즈 결과',
                  style: TextStyle(
                    fontFamily: 'PretendardVariable',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(71, 137, 71, 0),
                child: Row(
                  children: [
                    Text(
                      "당신은 ",
                      style: TextStyle(
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "한잘알",
                      style: TextStyle(
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xffff9119),
                      ),
                    ),
                    Text(
                      "입니다.",
                      style: TextStyle(
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(52, 33, 57, 0),
                child: Text(
                  "9/10 문제를 맞추셨군요",
                  style: TextStyle(
                    fontFamily: 'PretendardVariable',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(110.5, 248, 110.5, 0),
                child: SizedBox(
                  width: 154,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Row(
                            children: const <Widget>[
                              Text(
                                '메인으로',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PretendardVariable',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xffff9119),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
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

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(26, 26, 0, 0),
            child: ImageIcon(
              AssetImage("assets/image/home.png"),
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(80, 46, 79, 0),
                child: Column(
                  children: const <Widget>[
                    Center(
                        child: Text(
                      '\'새새\'는',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    )),
                    Text(
                      '무엇을 의미할까요?',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'PretendardVariable',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(291, 45, 50, 0),
              child: Text(
                '9/10',
                style: TextStyle(
                  color: Color.fromRGBO(255, 145, 25, 0.3),
                  fontFamily: 'PretendardVariable',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(53, 6, 52, 0),
              child: StepProgressIndicator(
                totalSteps: 10,
                currentStep: 9,
                size: 10,
                padding: 0,
                selectedColor: Color(0xffff9119),
                selectedSize: 13,
                unselectedColor: Color.fromRGBO(255, 145, 25, 0.3),
                roundedEdges: Radius.circular(10),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 74, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked1,
                            onChanged: (v) {
                              setState(() {
                                _isChecked1 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 74, 0, 0),
                  child: Text(
                    '새가 새다',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 35, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked2,
                            onChanged: (v) {
                              setState(() {
                                _isChecked2 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 35, 0, 0),
                  child: Text(
                    '새는 새다',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 35, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked3,
                            onChanged: (v) {
                              setState(() {
                                _isChecked3 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 35, 0, 0),
                  child: Text(
                    '새내기 새섬',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 35, 0, 0),
                  child: Transform.scale(
                    scale: 2,
                    child: Theme(
                        child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            shape: CircleBorder(),
                            value: _isChecked4,
                            onChanged: (v) {
                              setState(() {
                                _isChecked4 = v!;
                              });
                            }),
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(36, 35, 0, 0),
                  child: Text(
                    '새섬 새내기',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 35),
              child: SizedBox(
                width: 154,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/result');
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Row(
                          children: const <Widget>[
                            Text(
                              '결과보기',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'PretendardVariable',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xff000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
