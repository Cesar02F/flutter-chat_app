import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String text;
  final String textAction;

  const Labels({
    Key key, 
    @required this.ruta,
    @required this.text,
    @required this.textAction
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Text(this.text, style: TextStyle(color: Colors.black,fontSize: 15, fontWeight:FontWeight.w300),),
            SizedBox(height: 10,),
            GestureDetector(
              child: Text(this.textAction ,style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pushReplacementNamed(context, this.ruta);
              },
            )
          ],
        ),
    );
  }
}