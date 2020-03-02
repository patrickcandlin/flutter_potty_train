import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() => runApp(PottyTrainer());

class PottyTrainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PottyTrainerState();
  }
}

class _PottyTrainerState extends State<PottyTrainer> {
  final pottyQuestions = const [
      {
        'question': 'What was it?',
        'answers': ['Pee pee', 'Poop!']
      },
      {
        'question': 'Where was it?',
        'answers': ['In the Potty!', 'In the toilet!', 'Pants', 'Floor']
      }
    ];
  int _pottyIndex = 0;
  void _recordPotty() {
    setState(() {
      if (_pottyIndex == 1) {
        _pottyIndex = 0;
      } else {
        _pottyIndex = _pottyIndex + 1;
      }
    });
    print('$_pottyIndex potty(ies) recorded!');
  }

  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Potty Training Journal"),
        ),
        body: Column(
          children: <Widget>[
            Question(pottyQuestions[_pottyIndex]['question']),
            ...(pottyQuestions[_pottyIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_recordPotty, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
