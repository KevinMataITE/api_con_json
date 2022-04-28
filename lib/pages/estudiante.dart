import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Estudiante extends StatefulWidget {
  String matricula;
  String nombre;
  String carrera;
  String semestre;
  String telefeno;
  String correo;

  Estudiante(this.matricula, this.nombre, this.carrera, this.semestre,
      this.telefeno, this.correo,
      {Key? key})
      : super(key: key);

  @override
  State<Estudiante> createState() => _EstudianteState();
}

class _EstudianteState extends State<Estudiante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Informacion'),
        backgroundColor:const Color.fromARGB(255, 104, 106, 245),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/fondo2.jpg'), fit: BoxFit.cover)),
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
          alignment: Alignment.topCenter,
          child: Text.rich(TextSpan(children: <TextSpan>[
            
            const TextSpan( text: 'Matricula: ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            TextSpan(text: widget.matricula +"\n\n", style: const TextStyle(fontSize: 20)),
             const TextSpan( text: 'Nombre: ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            TextSpan(text: widget.nombre +"\n\n", style: const TextStyle(fontSize: 20)),
             const TextSpan( text: 'Carrera: ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            TextSpan(text: widget.carrera +"\n\n", style: const TextStyle(fontSize: 20)),
             const TextSpan( text: 'Semestre: ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            TextSpan(text: widget.semestre +"\n\n", style: const TextStyle(fontSize: 20)),
             const TextSpan( text: 'Telefono: ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            TextSpan(text: widget.telefeno +"\n\n", style: const TextStyle(fontSize: 20)),
             const TextSpan( text: 'Correo: ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20)),
            TextSpan(text: widget.correo +"\n\n", style: const TextStyle(fontSize: 20)),
            

          ])),
          ),

        
      ]),
    );
  }
}
