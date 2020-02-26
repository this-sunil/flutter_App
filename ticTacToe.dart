import 'package:flutter/material.dart';


class TicTacToe extends StatefulWidget {
  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  

  Color one, two, three, four, five, six, seven, eight, nine;
  bool flag = false;
  String title = "";
  @override
  void initState() {
    super.initState();
    setState(() {
      refresh();
    });
  }


  Future<void> dialogueAlert() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You will never be satisfied.'),
              Text('You\’re like me. I’m never satisfied.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Play Again'),
            onPressed: () {
              Navigator.of(context).pop();
              refresh();
            },
          ),
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                    child: Center(
                        child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ))),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (one == Colors.white) {
                                      one = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: one,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (two == Colors.white) {
                                      two = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: two,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (three == Colors.white) {
                                      three = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: three,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (four == Colors.white) {
                                      four = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: four,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (five == Colors.white) {
                                      five = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: five,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (six == Colors.white) {
                                      six = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: six,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (seven == Colors.white) {
                                      seven = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: seven,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (eight == Colors.white) {
                                      eight = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: eight,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (nine == Colors.white) {
                                      nine = flag ? Colors.red : Colors.pink;
                                      flag = !flag;
                                      check();
                                    }
                                  });
                                },
                                child: Container(
                                  color: nine,
                                  margin: EdgeInsets.all(5.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                  child: Center(
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text("Refresh"),
                      splashColor: Colors.orange,
                      onPressed: () {
                        refresh();
                        dialogueAlert();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void refresh() {
    setState(() {
      one = Colors.white;
      two = Colors.white;
      three = Colors.white;
      four = Colors.white;
      five = Colors.white;
      six = Colors.white;
      seven = Colors.white;
      eight = Colors.white;
      nine = Colors.white;
      title = "Tik Tak Toe";
    });
  }

  void check() {
    if (one == Colors.red && two == Colors.red && three == Colors.red) {
      title = "red123 win";
      dialogueAlert();
      
    } else if (four == Colors.red && five == Colors.red && six == Colors.red) {
      title = "red456 win";
      dialogueAlert();
      
    } else if (seven == Colors.red &&
        eight == Colors.red &&
        nine == Colors.red) {
      title = "red789 win";
      dialogueAlert();
      
    } else if (one == Colors.pink &&
        two == Colors.pink &&
        three == Colors.pink) {
      title = "pink123 win";
      dialogueAlert();
      
    } else if (four == Colors.pink &&
        five == Colors.pink &&
        six == Colors.pink) {
      title = "pink456 win";
      dialogueAlert();
      
    } else if (seven == Colors.pink &&
        eight == Colors.pink &&
        nine == Colors.pink) {
      title = "pink789 win";
      dialogueAlert();
      
    } else if (one == Colors.red && five == Colors.red && nine == Colors.red) {
      title = "red159 win";
      dialogueAlert();
      
    } else if (three == Colors.red &&
        five == Colors.red &&
        seven == Colors.red) {
      title = "red357 win";
      dialogueAlert();
      
    } else if (one == Colors.pink &&
        five == Colors.pink &&
        nine == Colors.pink) {
      title = "pink159 win";
      dialogueAlert();
      
    } else if (three == Colors.pink &&
        five == Colors.pink &&
        seven == Colors.pink) {
      title = "pink357 win";
      dialogueAlert();
      
    } else if (one == Colors.red && four == Colors.red && seven == Colors.red) {
      title = "red147";
      dialogueAlert();
      
    } else if (two == Colors.red && five == Colors.red && eight == Colors.red) {
      title = "red258";
      dialogueAlert();
    } else if (three == Colors.red && six == Colors.red && nine == Colors.red) {
      title = "red369";dialogueAlert();
      
    } else if (one == Colors.pink &&
        four == Colors.pink &&
        seven == Colors.pink) {
      title = "pink147";dialogueAlert();
      
    } else if (two == Colors.pink &&
        five == Colors.pink &&
        eight == Colors.pink) {
      title = "pink258";dialogueAlert();
      
    } else if (three == Colors.pink &&
        six == Colors.pink &&
        nine == Colors.pink) {
      title = "pink369";dialogueAlert();
      
    }
  }
}
