import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget{

  _tapButton(){
    debugPrint("Butão do alarme precionado");
  }
  _tapButton2(){
    debugPrint("Butão do telefone Precionado");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("André Lopes"),
        centerTitle: false,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: ()=>debugPrint("Email tapped!")),
          IconButton(icon: Icon(Icons.access_alarms),onPressed: _tapButton,),
          IconButton(icon: Icon(Icons.add_call),onPressed: _tapButton2,),
        ],
      ),
      backgroundColor: Colors.lightBlue,
      body: Container(
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               CustonButton(),
               /*InkWell(
                 child: Text(
                   "Seja Bem vindo!",
                  style: TextStyle(
                    fontWeight:FontWeight.w400,
                    fontSize:30,
                    color: Colors.white70,
                  ),
                 
                 ),
                 onTap: ()=>debugPrint("Tapedd.."),
               ),*/
             ],
        ),

      ),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.blue,
      child: Center(
        child: Text(
          "André Lopes",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CustonButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Seja Bem Vindo!"),
        backgroundColor: Colors.deepOrangeAccent,);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(8.2),

        ),
        
        child: Text("Button",
        style: TextStyle(
            color: Colors.white,
          ),),
      ),
      
    );
  }
}