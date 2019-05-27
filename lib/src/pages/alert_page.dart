import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerta"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar alerta ...", ),
          textColor: Colors.white,
          shape: StadiumBorder(),
          color: Colors.blue,
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.pop(context);
        },
        backgroundColor: Colors.red,
      ),
    );
  }

  void _mostrarAlert( context ) {

    showDialog(

      context: context,
      barrierDismissible: false,
      builder: (context) {
        
        return AlertDialog(
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Es un Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es un contenido de una alerta, para ejemplo.'),
              Divider(height: 20.0,),
              FlutterLogo( size: 100.0,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Cerrar"),
              textColor: Colors.red,
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("Aceptar"),
              textColor: Colors.green,
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );

      }

    );

  }
  
}