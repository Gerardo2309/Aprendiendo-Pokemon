
import 'package:aprende_pokemon/imagen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aprende Pokemon',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:<Widget>[
          Expanded(
            child: Row(
            children: <Widget> [
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: _Divibotones('chim.png', 300, 0, 0,100,0),
                      ),
                      MaterialButton(
                        onPressed: () => _displayDialog(context, _sizeboxSugerencia()),
                        child: _Divibotones('sugerencias.png', 50, 0, 250,250,0),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                  color: Color.fromRGBO(249, 217, 154, 0.9),
                  ),
                ),
              ),
              Expanded(
             
                child: Container(
                  child: Column(
                    children: <Widget> [
                      Container(
                        child: _Logo('logo.png', 120, 50),
                      ),
                      Container(
                        child: _Divibotones('213.png', 300, 0, 0, 150, 0) ,
                      )
                    ],
                  ),
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                  color:Color.fromRGBO(249, 217, 154, 0.9),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () => _displayDialog(context, _sizeboxajustes()),
                        child: _Divibotones('ajustes.png', 50, 250, 0, 30, 0),
                      ),
                      Container(
                        child: _Divibotones('geodude.png', 300, 0, 0, 30, 0),
                      ),
                      Container(
                        child: _Divibotones('salida.png', 50, 250, 0,230,0),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                  color:Color.fromRGBO(249, 217, 154, 0.9),
                  ),
                ),
              ),
            ],
          ),
          ),            
        ],
      ),
    );
  }
}

Widget _Divibotones(nombre, tamano, izquierda, derecha, arriba, abajo){
  return Column(
    children: <Widget> [
      Imagdiv(nombre, tamano, izquierda, derecha, arriba, abajo),
    ],
  );
}


Widget _Logo(nombre, tamano, arriba){
  return Container(
            height: tamano,
            padding: const EdgeInsets.all(8.0),
            margin:  EdgeInsets.only( top: arriba),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/'+nombre),
                fit: BoxFit.cover,
              ),
            ), 
          );
}

Widget _Contajustes(texto,ancho,alto,color){
  return Container(
            height: ancho,
            width: alto,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              color:color,
            ),
            child: Text(
              texto.toString()
            ),
          );
}


Widget _sizeboxajustes(){
  List<String> ajustes = ["Vizualizador", "Acerca de", "Creditos"];
  return SizedBox(
              width: 700,
              height: 350,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: const TabBar(
                      tabs: [
                        Tab(icon: Text("Visualizador", style:  TextStyle(color: Colors.black))),
                        Tab(icon: Text("Acerca de", style:  TextStyle(color: Colors.black))),
                        Tab(icon: Text("Creditos",
                        style:  TextStyle(color: Colors.black),)),
                      ],
                    ),
                  backgroundColor: Color.fromRGBO(249, 217, 154, 0.4),
                  foregroundColor: Colors.black,
                    title: const Text('Ajustes'),
                  ),
                  body:  TabBarView(
                    children: [
                      _Ajustes(),
                      _Acercade(),
                      _Creditos(),
                    ],
                  ),
                ),
              ),
            );
}

Widget _Acercade(){
  return  
  Container(
    height: 350,
    width: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/acercade.png'),
                fit: BoxFit.cover,
              ),)
  );
}

Widget _Creditos(){
  return  
  Container(
    height: 350,
    width: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/creditos.png'),
                fit: BoxFit.cover,
              ),)
  );
}

Widget _Ajustes(){
  return  
  Container(
    height: 350,
    width: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/visual.png'),
                fit: BoxFit.cover,
              ),)
  );
  
  
                    /*  Column(
        
                        children: [
                             const Text(
                               'Resolucion Del Juego',
                               textAlign: TextAlign.center,
                               overflow: TextOverflow.ellipsis,
                               style:  TextStyle(fontWeight: FontWeight.bold),
                             ), 
                             const Text('HD 720p',
                             textAlign: TextAlign.left,), 
                            Text("FHD 1080p") ,
                           Text("Sistema predeterminado") ,
                        ],
                      );*/

}


Widget _sizeboxSugerencia(){
  return Container(
              width: 700,
              height: 350,
              child: Column(
                children:[
                  _Contajustes("¿Que le parece el juego?", 50, 700, Color.fromRGBO(249, 217, 154, 0.7)),
                  Container(
                    width: 700,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      image: const DecorationImage(
                        image: AssetImage('assets/LD.png'),
                        fit: BoxFit.cover,
                      ),
                    ), 
                  )
                ],
              ),
            );
}
    
Future<Future> _displayDialog(BuildContext context, Widget nombre) async {  
    return showDialog(  
        context: context,  
        builder: (context) {  
          return AlertDialog(
          shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
          backgroundColor:Color.fromRGBO(249, 217, 154, 0.7),   
            content: nombre,
            /*actions: <Widget>[  
              new FlatButton(  
                child: new Text('SUBMIT'),  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
              )  
            ],  */
          );  
        }); 
  }   