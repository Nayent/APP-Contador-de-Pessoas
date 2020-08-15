import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  String _text = "Pode entrar!";

  void counter(value) {
    _count += value;

    if (_count < 0) {
      _text = "Valor inválido!";
    } else if (_count <= 10) {
      _text = "Pode entrar!";
    } else {
      _text = "Lotado!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: <Widget>[
      Image.asset(
        "images/wallpaper.jpg",
        fit: BoxFit.cover,
        height: 900,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pessoas: $_count",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 64,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    blurRadius: 10.0,
                    offset: Offset(5.0, 5.0),
                  ),
                  Shadow(
                    color: Colors.red,
                    blurRadius: 10.0,
                    offset: Offset(-5.0, 5.0),
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          counter(-1);
                        });
                      },
                      child: Text("-1",
                          style: TextStyle(
                            fontSize: 48.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )))),
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          counter(1);
                        });
                      },
                      child: Text("+1",
                          style:
                              TextStyle(fontSize: 48.0, color: Colors.white))))
            ],
          ),
          Text("$_text",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 48,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    blurRadius: 10.0,
                    offset: Offset(5.0, 5.0),
                  ),
                  Shadow(
                    color: Colors.red,
                    blurRadius: 10.0,
                    offset: Offset(-5.0, 5.0),
                  ),
                ],
              )),
        ],
      )
    ]));
  }
}
