import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  int people = 0;
  String infotext = "Pode Entrar!";

  void changePeople(int delta){
     setState(() {
       people += delta;

       if (people < 0 ){
         infotext = "Mundo Invertido";
       }
       else if(people <= 10)
         {
            infotext = "Pode Entrar";
         }
         else
           {
             infotext = "Lotado";

           }


     });

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/Inside-Restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: $people",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:                 FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                        onPressed: ()
                        {changePeople(1);}
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:                 FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                        onPressed: ()
                        {changePeople(-1);}
                    ),
                  ),
                ],
              ),
              Text(
                infotext,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0),
              )
            ])
      ],
    );
  }
}
