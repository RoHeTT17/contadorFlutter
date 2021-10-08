import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

//TextStyle estiloDefault=new TextStyle(fontSize: 25);
//se marca como final porque StatelessWidget no deben cambiar sus propiedades
  final estiloDefault=new TextStyle(fontSize: 25); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('El titutolo'),
        centerTitle: true,
        elevation: 5.5,
      ),
      body: Center(
        child: Column(
       //ctrl + space para ver todas las propiedades de un Widget
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[ // por default da dynamic, por eso le agreque que sea de tipo wiget
           Text('Número de Tabs:',style: estiloDefault,),
           Text('0',style: estiloDefault,),
         ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        //onPressed: null, //es como si el disable estuviera en true
        onPressed: (){
          print('Hola Mundo');
        },
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}