import 'package:ejemplo2asdf1409/pages/new_content/new_content_page1.dart';
import 'package:ejemplo2asdf1409/pages/new_content/new_content_page2.dart';
import 'package:ejemplo2asdf1409/pages/new_content/new_content_page3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EjemploBotonNewPage extends StatefulWidget {
  EjemploBotonNewPage({Key? key}) : super(key: key);

  @override
  State<EjemploBotonNewPage> createState() => _EjemploBotonNewPageState();
}

class _EjemploBotonNewPageState extends State<EjemploBotonNewPage> {
  final paginas = [NcPage1(), NcPage2(), NcPage3()];
  int paginaSel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo 1 boton new page')),
      body: paginas[paginaSel],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: paginaSel,
          onTap: (index) {
            //print('Tap' + index.toString());
            setState(() {
              paginaSel = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.algolia),
              label: 'Pagina 1',
              backgroundColor: Color(0xFFD5C5C8),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.circleUser),
              label: 'Pagina 2',
              backgroundColor: Color(0xFF564256),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.hippo),
              label: 'Pagina 3',
              backgroundColor: Color(0xFF51E5FF),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.fish),
              label: 'Pagina 4',
              backgroundColor: Color(0xFF007EA7),
            ),
          ]),
    );
  }
}
