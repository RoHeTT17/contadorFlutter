

import 'package:flutter/material.dart';


//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

//Para que una clase sea un widget se debe definir de que tipo
class MyApp extends StatelessWidget{

//El método build es el encargado de dibujar un el widget
//StatelessWidget, es abstracto por lo tanto se sobre escribe el método build que ya tiene
  @override
  Widget build(context){ // este método build debe retornar un widget
 //context contiene información del árbol de widgets, del tema, iconos, relaciones (padre-hijo)  
    return  MaterialApp(// MaterialApp es un widget que permite la configuración global de la aplicación.
      debugShowCheckedModeBanner: false, //quitar el baner de debug
      home: Center(
        //child: HomePage(),//clase home_page
         child: ContadorPage(),//clase contador_page
      ),
      
    );
  }

}