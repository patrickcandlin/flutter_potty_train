import 'package:flutter/material.dart';
import './question.dart';


void main() => runApp(PottyTrainer());

class PottyTrainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PottyTrainerState();
  }
}

class _PottyTrainerState extends State<PottyTrainer> {
    int _pottyIndex = 0;
    void _recordPotty() {
      setState(() {
        if(_pottyIndex == 1){
         _pottyIndex = 0;
        } else {
          _pottyIndex = _pottyIndex + 1;
        }
      });
        print('$_pottyIndex potty(ies) recorded!');
    }
  Widget build(BuildContext context) {
    var pottyQuestions = [
      {'question':'What was it?', 'option1':'Number one', 'option2':'Number two' },
      {'question':'Where was it?', 'option1':'In the potty', 'option2':"Not in potty"}
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Potty Training Journal"),
        ),
        body: Column(
          children: <Widget>[
            Question(pottyQuestions[_pottyIndex]['question']),
            RaisedButton(
              child: Text(pottyQuestions[_pottyIndex]['option1']),
              onPressed: _recordPotty,
            ),
            RaisedButton(
              child: Text(pottyQuestions[_pottyIndex]['option2']),
              onPressed: _recordPotty,
            ),
          ],
        ),
      ),
    );
  }
}
