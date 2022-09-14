import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EjemploBotonNewPage extends StatefulWidget {
  EjemploBotonNewPage({Key? key}) : super(key: key);

  @override
  State<EjemploBotonNewPage> createState() => _EjemploBotonNewPageState();
}

class _EjemploBotonNewPageState extends State<EjemploBotonNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo 1 boton new page')),
      body: Text('Ejemplo 1'),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.accessPoint),
          label: 'Pagina 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.accessPoint),
          label: 'Pagina 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.accessPoint),
          label: 'Pagina 3',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.accessPoint),
          label: 'Pagina 4',
        ),
      ]),
    );
  }
}
