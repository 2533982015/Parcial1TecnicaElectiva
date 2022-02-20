import 'package:flutter/material.dart';

class ResgisterPage extends StatelessWidget {
  ResgisterPage({Key? key}) : super(key: key);

  inputDecoration(IconData icon, String hinText) => InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      hintText: hinText,
      icon: Icon(icon),
      border: OutlineInputBorder());

  final double defaultSpacing = 15.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_formContent(context)],
        ));
  }

  Widget _formContent(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSpacing),
        width: double.infinity,
        child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: defaultSpacing,
            children: [
              SizedBox(
                  width: 100,
                  height: 100,
                  child:
                      Image(image: AssetImage('assets/images/form_icon.png'))),
              TextField(
                  decoration: inputDecoration(Icons.person, 'Usuario'),
                  maxLines: 1),
              TextField(
                  decoration: inputDecoration(Icons.person, 'Nombre'),
                  maxLines: 1),
              TextField(
                  decoration: inputDecoration(Icons.person, 'Apellidos'),
                  maxLines: 1),
              TextField(
                  decoration: inputDecoration(Icons.map_outlined, 'Direccion'),
                  maxLines: null),
              TextField(
                  decoration: inputDecoration(Icons.password, 'Password'),
                  maxLines: 1,
                  obscureText: true),
              TextField(
                  decoration:
                      inputDecoration(Icons.password, 'Confirmar Password'),
                  maxLines: 1,
                  obscureText: true),
              TextField(
                  decoration: inputDecoration(Icons.phone, 'Telefono'),
                  maxLines: 1),
              TextField(
                  decoration: inputDecoration(Icons.verified_user, 'Correo'),
                  maxLines: 1),
              Padding(
                padding: EdgeInsets.only(right: defaultSpacing),
                child: ElevatedButton(
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('Informacion guardada'),
                            )),
                    child: Text('Guardar'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancelar'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      textStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
            ]),
      );
}
