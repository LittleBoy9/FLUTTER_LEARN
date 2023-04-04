import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//   var selectHandler;

  final String answerText;
  final VoidCallback selectHandler;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(primary: Colors.purple, onPrimary: Colors.white),
      //     child: Text(answerText),
      //   //  style: ElevatedButton.styleFrom({primary: Colors.red}),
      //     onPressed: selectHandler
      // )

      child: OutlinedButton(
          child: Text(answerText),
          style: OutlinedButton.styleFrom(
              primary: Colors.purple, side: BorderSide(color: Colors.blue)),
          onPressed: selectHandler),
    );
  }
}
