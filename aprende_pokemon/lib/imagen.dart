import 'package:aprende_pokemon/abecedario.dart';
import 'package:flutter/material.dart';
import 'package:aprende_pokemon/contdiv.dart';


class Imagdiv extends StatefulWidget{
  String nombre;
  double ancho;
  double izquierda;
  double derecha;
  double arriba;
  double abajo;

  Imagdiv(this.nombre, this.ancho, this.izquierda, this.derecha, this.arriba, this.abajo);

  @override
  State<Imagdiv> createState() => _ImagdivState();
}

class _ImagdivState extends State<Imagdiv> {
  @override
  Widget build(BuildContext context) {

    return Container(
            height: widget.ancho,
            width: widget.ancho,
            padding: const EdgeInsets.all(8.0),
            margin:  EdgeInsets.only(left: widget.izquierda, top: widget.arriba, right: widget.derecha, bottom: widget.abajo),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/'+widget.nombre),
                fit: BoxFit.cover,
              ),
            ), 
            child: boton(widget.nombre)
          );
  }

     boton(nombre){
      if(nombre == "chim.png"){
        return contDiv(Color.fromRGBO(240, 214, 100,1 ), 1, 0.00, 70.00, 70.00, 185.0, 0.0,1);
        
      }else if(nombre == "LD.png"){

      }else if (nombre == "213.png"){
        return contDiv(Color.fromRGBO(240, 214, 100,1 ), 2, 0.00, 70.00, 70.00, 185.0, 0.0,1);
      }else if (nombre == "geodude.png"){
        return contDiv(Color.fromRGBO(240, 214, 100,1 ), 3, 0.00, 70.00, 70.00, 185.0, 0.0,1);
      }
    }

} 

