import 'package:aprende_pokemon/imagen.dart';
import 'package:aprende_pokemon/main.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class abecedario extends StatefulWidget{

  @override
  State<abecedario> createState() => _abecedarioState();
}

class _abecedarioState extends State<abecedario> {
  
  var c = "a".codeUnitAt(0);
  var j = 0;
  var id = 97;
  final player = AudioCache();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:Color.fromRGBO(249, 217, 154, 0.9),
      ),
      child: Column(
        children: [
          Container(
            height: 70,
            margin:  EdgeInsets.only( top: 25),
            child: Expanded(
              child: Align(
                alignment: Alignment.topRight,
              child: Container(
                margin:  EdgeInsets.only( right: 25),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),   
                child: MaterialButton(
                  onPressed: () => _displayDialog(context, _pausa(context)),

                  child: Imagdiv('salida.png', 50, 0, 0, 0, 0),),
              ),
              ),
            ),
          ),
          for (var k = 1; k <= 2; k++)
          Row(
            children: [
              for (var i = 1; i <= 4; i++)
              abcont(),
            ],
          )
        ],
      ),
    );
  }




  abcont(){ 
    while (++j <=26) {
      c++;
      return Container(
        height: 150,
        width: 150,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(left: 80 , top: 80),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color.fromRGBO(240, 214, 100,1 ),  
        ),       
        child:MaterialButton(
          onPressed: (){
            abcaudio(id);
            id++;
          },
          child:Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/'+String.fromCharCode(c-1)+'.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )     
      );  
    }
  }  


abcaudio(letra){
  return player.play(String.fromCharCode(letra)+'.mp3');

}


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

  
Widget _pausa(context){
  return Container(
              width: 700,
              height: 350,
              child: Column(
                children:[
                  Container(
                    width: 700,
                    height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/pause.png'),
                      fit: BoxFit.cover,
                    ),
                  ), 
                  child: Column(
                    children: [
                      Container(
                        margin:  EdgeInsets.only( top:50, right: 30,),

                        child: MaterialButton(onPressed: (){ Navigator.of(context).pop(); },
                        child:Text("Play",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),),
                      ),
                      Container(
                        margin:  EdgeInsets.only( top:70, right: 20,),

                        child: MaterialButton(onPressed: (){ Navigator.of(context).pop(); },
                        child:Text("Replay",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                      ),
                      Container(
                        margin:  EdgeInsets.only( top:75, right: 20,),

                        child: MaterialButton(
                          onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstRoute()));
                        },
                        child:Text("Salir",
                        overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                      ),
                    ],
                  ),
                  )
                ],
              ),
            );
}
