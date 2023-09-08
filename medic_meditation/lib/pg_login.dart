

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
    Widget build(BuildContext context){
      return Scaffold(
         appBar:AppBar(
         title:Text('Medic_Meditation'),
         actions:[
           Center(child:Text('menu'),),
            ],
         
      
         ),
       drawer: Drawer(),
    );
  }
 
}

