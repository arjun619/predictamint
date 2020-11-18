import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<SecondRoute> {
  int final_val = 0;
  double _value = 0.0;
  void _setvalue(double value) {
    setState(() => _value = value);
    final_val = (_value * 50).round();
  }

  Widget get submitRatingButton {
    return RaisedButton(
      onPressed: () => print('pressed with slider value $final_val'),
      child: Text('Submit'),
      color: Colors.indigoAccent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PredictaMint'),
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Value: ${(_value * 50).round()}'),
              new Slider(value: _value, onChanged: _setvalue),
              submitRatingButton,
            ],
          ),
        ),
      ),
    );
  }
}
