import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/widgets/categoria_seleccion.dart';
import 'package:flutter_chat_ui_starter/widgets/chat_recientes.dart';
import 'package:flutter_chat_ui_starter/widgets/contactos_favoritos.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334)
          ..init(context);
    /*
    1080 x 2312
      top & bottom = setHeight
      left & right = setWidth
      height: ScreenUtil().setHeight(40.0),
      width: ScreenUtil().setWidth(40.0),
      no cambiara depende de tamaño de la pantalla
      fontSize: ScreenUtil.getInstance().setSp(24),
      cambiare depende del tamaño de la pantalla
      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
    */
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 28.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Center(
          child: Text(            
            "Chats",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 28.0,
            color: Colors.white,
            onPressed: () {},
        ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategoriaSeleccion(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(ScreenUtil().setWidth(60.0)),
                  topRight: Radius.circular(ScreenUtil().setWidth(60.0)),                
                )
              ),
              child: Column(                
                children: <Widget>[
                  ContactosFavoritos(),
                  ChatRecientes(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
