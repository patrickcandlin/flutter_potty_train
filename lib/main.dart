import 'package:flutter/material.dart';

void main() => runApp(PottyTrainer());

class PottyTrainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PottyTrainerState();
  }
}

class PottyTrainerState extends State<PottyTrainer> {
  Widget build(BuildContext context) {
    int pottiesRecorded = 0;
    void recordPotty() {
      pottiesRecorded = pottiesRecorded + 1;
      print('$pottiesRecorded potty(ies) recorded!');
    }

    // var questions = [
    //   'Where was it?',
    //   'What was it?',
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Potty Training Journal"),
        ),
        body: Column(
          children: <Widget>[
            Text('A Pottty!'),
            RaisedButton(
              child: Text('Number one on Potty!'),
              onPressed: recordPotty,
            ),
            RaisedButton(
              child: Text('Number two on Potty!'),
              onPressed: recordPotty,
            ),
            RaisedButton(
              child: Text('Number one not on potty.'),
              onPressed: recordPotty,
            ),
            RaisedButton(
              child: Text('Number two not on potty.'),
              onPressed: recordPotty,
            ),
          ],
        ),
      ),
    );
  }
}
