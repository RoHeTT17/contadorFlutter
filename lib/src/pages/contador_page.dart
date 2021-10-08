import 'package:flutter/material.dart';

/* Los StatefulWidget constand de dos clases, la primera es el StatefulWidget como  tal,
   la segunda es el estado que maneja el StatefulWidget 
 */ 

class ContadorPage extends StatefulWidget{

  /*@override
  createState(){
    //Necesita retornar una nueva instancia de la clase "estado"
    return _ContadorPageState();
  }*/

  //Como el metodo regresa una sola línea (el return), se puede cambiar a esta forma:
  @override
  createState()=> _ContadorPageState();


}

//Se agrega la palabra "State" al nombre (es un estandar) para indicar que es el estado 
//_ es para hacer privada la clase
class _ContadorPageState extends State<ContadorPage>{
  
  //TextStyle estiloDefault=new TextStyle(fontSize: 25);
  final _estiloDefault=new TextStyle(fontSize: 25); 
  int _conteo=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Stateful'),
        centerTitle: true,
        elevation: 5.5,
      ),
      body: Center(
        child: Column(
       //ctrl + space para ver todas las propiedades de un Widget
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[ // por default da dynamic, por eso le agreque que sea de tipo wiget
           Text('Número de Tabs:',style: _estiloDefault,),
           Text('$_conteo',style: _estiloDefault,),
         ],
        )
      ),
      floatingActionButton: _crearBotones()
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

 Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),//para dar espacio contra el borde
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
        //SizedBox(width: 5.0,), //Es otro widget, muy parecedido a lo que es un div en html
        Expanded(child: SizedBox(/*width: 5.0*/)),
        FloatingActionButton(child: Icon(Icons.cleaning_services),onPressed: _reset),
        SizedBox(width: 5.0,), 
        FloatingActionButton(
                child: Icon(Icons.add),
                //onPressed: null, //es como si el disable estuviera en true
                onPressed:_agregar /*(){
                  //print('Hola Mundo');
                  // _conteo++;
                  
                  //Para redibujar (refrescar) el widget, solo basta con llamar el método, el código puede ir fuera.
                  setState(() {
                      _conteo++; 
                  });
                }*/,
              ),

      ],
    );
 }

  void _agregar(){
    setState(() =>_conteo++);
  }

  void _sustraer(){
    setState(() => _conteo--);
  }

  void _reset(){
      //Para redibujar (refrescar) el widget, solo basta con llamar el método, el código puede ir fuera.
    setState(() {
        _conteo=0; 
    });
  }

}