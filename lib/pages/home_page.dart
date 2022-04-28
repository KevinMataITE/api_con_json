import 'dart:convert';

import 'package:api_con_json/pages/estudiante.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List _estudiantes = [];

@override
void initState(){
  super.initState();
  WidgetsBinding.instance!.addPostFrameCallback((_) => readJson(context));
}

Future<void> readJson(BuildContext context) async {
    final String lectura= await rootBundle.loadString('assets/info.json');
    final infoSalida = await json.decode(lectura);
    setState(() {
      _estudiantes = infoSalida["info"];
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Estudiantes'),
      backgroundColor: const Color.fromARGB(255, 6, 168, 160),

    
      ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/fondo1.jpg'),
                      fit: BoxFit.cover)), ),
          ListView.builder(
          itemCount: _estudiantes.length,
          
          itemBuilder: ( context, index) {
          return ListTile(
            onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Estudiante(
                  _estudiantes[index]["matricula"],
                  _estudiantes[index]["nombre"],
                  _estudiantes[index]["carrera"],
                  _estudiantes[index]["semestre"],
                  _estudiantes[index]["telefonos"],
                  _estudiantes[index]["correo"],
                
                )
                
                ),
              );
      
            },
            title: Text(_estudiantes[index]["nombre"], style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            subtitle: Text(_estudiantes[index]["carrera"],style: const TextStyle(color: Colors.white),),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 53, 236, 206),
              
              child: Text(_estudiantes[index]["nombre"].substring(0,1),style: const TextStyle(color: Colors.black),), 
              ),
              trailing: const Icon(Icons.arrow_right_outlined),
          );
      
          } 
          )
        
        ],
      ),
    );
  }
}

