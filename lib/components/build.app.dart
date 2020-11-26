import 'package:flutter/material.dart';
import 'package:text_editing/components/build.button.color.dart';
import 'package:text_editing/components/build.button.dart';
import 'package:flutter/services.dart';

class BuildApp extends StatefulWidget {
  @override
  _BuildAppState createState() => _BuildAppState();
}

class _BuildAppState extends State<BuildApp> {
  @override
  final cores = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.white70,
    Colors.pink,
    Colors.orange,
    Colors.brown,
  ];

  final textAlign = [
    TextAlign.start,
    TextAlign.center,
    TextAlign.end,
    TextAlign.justify,
  ];

  final decorations = [
    TextDecoration.none,
    TextDecoration.underline,
    TextDecoration.overline,
    TextDecoration.lineThrough,
  ];

  final bold = [
    FontWeight.normal,
    FontWeight.bold,
  ];

  final italic = [
    FontStyle.normal,
    FontStyle.italic,
  ];

  int index1 = 0;

  int index2 = 0;

  int index3 = 0;

  int index4 = 0;

  int index5 = 0;

  TextEditingController ctl = TextEditingController();

  _setBold() {
    setState(() {
      if (index2 == 0) {
        index2 = 1;
      } else {
        setState(() {
          index2 = 0;
        });
      }
    });
  }

  _setItalic() {
    setState(() {
      if (index3 == 0) {
        index3 = 1;
      } else {
        setState(() {
          index3 = 0;
        });
      }
    });
  }

  _setUnderline() {
    setState(() {
      if (index1 != 1) {
        index1 = 1;
      } else {
        index1 = 0;
      }
    });
  }

  _setOverline() {
    setState(() {
      if (index1 != 2) {
        index1 = 2;
      } else {
        index1 = 0;
      }
    });
  }

  _setlineThrough() {
    setState(() {
      if (index1 != 3) {
        index1 = 3;
      } else {
        index1 = 0;
      }
    });
  }

  _setLeft() {
    if (index4 != 0) {
      setState(() {
        index4 = 0;
      });
    }
  }

  _setRigth() {
    if (index4 != 1) {
      setState(() {
        index4 = 1;
      });
    }
  }

  _setCenter() {
    if (index4 != 2) {
      setState(() {
        index4 = 2;
      });
    }
  }

  _setCopy() {
    Clipboard.setData(ClipboardData(text: ctl.text));
  }

  _setBlack() {
    if (index5 != 0) {
      setState(() {
        index5 = 0;
      });
    }
  }

  _setRed() {
    if (index5 != 1) {
      setState(() {
        index5 = 1;
      });
    }
  }

  _setBlue() {
    if (index5 != 2) {
      setState(() {
        index5 = 2;
      });
    }
  }

  _setGreen() {
    if (index5 != 3) {
      setState(() {
        index5 = 3;
      });
    }
  }

  _setYelow() {
    if (index5 != 4) {
      setState(() {
        index5 = 4;
      });
    }
  }

  _setWhite() {
    if (index5 != 5) {
      setState(() {
        index5 = 5;
      });
    }
  }

  _setPink() {
    if (index5 != 6) {
      setState(() {
        index5 = 6;
      });
    }
  }

  _setOrange() {
    if (index5 != 7) {
      setState(() {
        index5 = 7;
      });
    }
  }

  _setBrowmn() {
    if (index5 != 8) {
      setState(() {
        index5 = 8;
      });
    }
  }

  _setRedefinir() {
    setState(() {
      index1 = 0;
      index2 = 0;
      index3 = 0;
      index4 = 0;
      index5 = 0;
      ctl.text = "";
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, right: 0, left: 8, bottom: 8),
        child: (Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BuildButtom(
                        (Image.asset("assets/images/bold.png")),
                        _setBold,
                      ),
                      BuildButtom(
                        (Image.asset("assets/images/italic.png")),
                        _setItalic,
                      ),
                      BuildButtom(
                        (Image.asset("assets/images/dashed.png")),
                        _setUnderline,
                      ),
                      BuildButtom(
                        (Image.asset("assets/images/overline.png")),
                        _setOverline,
                      ),
                      BuildButtom(
                        (Image.asset("assets/images/041-strikethrough.png")),
                        _setlineThrough,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, bottom: 10, right: 0),
                            width: 326,
                            height: 570,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff5f5f5),
                            ),
                            child: Card(
                              elevation: 3,
                              child: TextFormField(
                                enableInteractiveSelection: true,
                                style: TextStyle(
                                  color: cores[index5],
                                  decoration: decorations[index1],
                                  fontWeight: bold[index2],
                                  fontStyle: italic[index3],
                                ),
                                textAlign: textAlign[index4],
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                                controller: ctl,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.24),
                        child: Column(
                          children: [
                            BuildButtonColor(
                              color: Colors.black,
                              func: _setBlack,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.red,
                              func: _setRed,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.blue,
                              func: _setBlue,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.green,
                              func: _setGreen,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.yellow,
                              func: _setYelow,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.white70,
                              func: _setWhite,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.pink,
                              func: _setPink,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.orange,
                              func: _setOrange,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            BuildButtonColor(
                              color: Colors.brown,
                              func: _setBrowmn,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BuildButtom(
                              (Image.asset("assets/images/left-alignment.png")),
                              _setLeft,
                            ),
                            BuildButtom(
                              (Image.asset(
                                  "assets/images/center-alignment.png")),
                              _setRigth,
                            ),
                            BuildButtom(
                              (Image.asset(
                                  "assets/images/right-alignment.png")),
                              _setCenter,
                            ),
                          ]),
                      Row(
                        children: [
                          FlatButton(
                              onPressed: _setCopy,
                              child: Column(
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              "assets/images/041-copy.png"),
                                        ],
                                      )),
                                  Text("COPIAR",
                                      style: TextStyle(
                                          fontFamily: "V5Xtende",
                                          fontSize: 10)),
                                ],
                              )),
                          FlatButton(
                              onPressed: _setRedefinir,
                              child: Column(
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              "assets/images/041-eraser.png"),
                                        ],
                                      )),
                                  Text("FORMATAR",
                                      style: TextStyle(
                                          fontFamily: "V5Xtende",
                                          fontSize: 10)),
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
