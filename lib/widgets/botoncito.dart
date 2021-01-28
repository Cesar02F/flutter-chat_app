import 'package:flutter/material.dart';

class Botoncito extends StatelessWidget {
  final Color color;
  final String text;
  final Function onPressed; 

  const Botoncito({
    Key key, 
    this.color= Colors.redAccent, 
    @required this.text, 
    @required this.onPressed
    }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          elevation:10,
          highlightElevation: 5,
          color: this.color,
          shape: StadiumBorder(),
          onPressed: this.onPressed,
          child: Container(
            width: double.infinity,
            height: 55,
            child: Center(
              child: Text(this.text,style: TextStyle(color: Colors.white,fontSize: 20),),

            )
          ),
          
        );

  }
}