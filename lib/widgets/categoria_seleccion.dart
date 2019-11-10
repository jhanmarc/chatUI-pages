import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriaSeleccion extends StatefulWidget {
  CategoriaSeleccion({Key key}) : super(key: key);

  @override
  _CategoriaSeleccionState createState() => _CategoriaSeleccionState();
}

class _CategoriaSeleccionState extends State<CategoriaSeleccion> {
  int selectedIndex = 0;

  final List<String> catagorias = [
    'Mensajes',
    'Online',
    'Grupos',
    'Solicitudes'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagorias.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Text(
                catagorias[index],
                style: TextStyle(
                    color: index == selectedIndex ? Colors.white : Colors.white60,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
