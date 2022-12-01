import 'package:contact_diry/screens/add_new_contact.dart';
import 'package:contact_diry/screens/details_page.dart';
import 'package:contact_diry/screens/edit_page.dart';
import 'package:contact_diry/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(
            MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: 'inicio',
              routes: {
                'inicio': (context) => Inicio(),
                'adicionar': (context) => NovoContato(),
                'informacoes': (context) => Informacoes(),
                'editar': (context) => EditarContato(),
              },
            ),
          ));
}
