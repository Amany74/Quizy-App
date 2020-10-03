import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Function reset;
  Result({this.resultScore , this.reset});

  String get resultPhase {
    var resultText = 'you did it';
    if (resultScore <= 8) {
      resultText = 'you are innocent and great';
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable ';
    } else if (resultScore <= 16) {
      resultText = 'you are Strange ';
    } else {
      resultText = 'you are so Bad ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Text(
            
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30 ,) ,
          Container(
            color: Colors.grey[300] ,
            child: FlatButton(onPressed: reset , child: Text('Restart the Quiz ' , 
            style: TextStyle(
              fontSize: 25 ,
            ),
            ) ,
            textColor: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
