import 'package:aprende_pokemon/abecedario.dart';
import 'package:flutter/material.dart';

class contDiv extends StatefulWidget{
  Color color;
  int numero;
  double ancho;
  double izquierda;
  double derecha;
  double arriba;
  double abajo;
  int ifbtn;

  contDiv(this.color, this.numero, this.ancho, this.izquierda, this.derecha, this.arriba, this.abajo, this.ifbtn);

  @override
  State<contDiv> createState() => _contDivState();
}

class _contDivState extends State<contDiv> {
  @override
  Widget build(BuildContext context) {
    return ifbtnes(widget.ifbtn);
  }

  contenedor(){
        return Container(
            height: widget.ancho,
            width: widget.ancho,
            padding: const EdgeInsets.all(8.0),
            margin:  EdgeInsets.only(left: widget.izquierda, top: widget.arriba, right: widget.derecha, bottom: widget.abajo),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(5.0),
              color:widget.color,
            ),
            child: MaterialButton(
              onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => abecedario()));},
              child:Center(
                child: Text(
                  widget.numero.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
                ),
              ), 
            )              
          );
  }



  ifbtnes(numero){
    if (numero==1) {
      return contenedor();
    }

  }
}