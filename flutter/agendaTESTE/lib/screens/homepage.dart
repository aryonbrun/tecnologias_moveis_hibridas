import 'dart:io';
import 'package:contact_diry/screens/globels.dart';
import 'package:contact_diry/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (AppTheme.isDark) ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: (AppTheme.isDark) ? Colors.black : Colors.white,
        elevation: 0,
        title: Text(
          "Contatos",
          style:
              TextStyle(color: (AppTheme.isDark) ? Colors.white : Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                AppTheme.isDark = !AppTheme.isDark;
              });
            },
            icon: Icon(Icons.circle,
                color: (AppTheme.isDark) ? Colors.white : Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert,
                color: (AppTheme.isDark) ? Colors.white : Colors.black),
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.lightBlue),
        ),
        child: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed('adicionar');
            });
          },
        ),
      ),
      body: (Global.allcontacts.isEmpty)
          ? Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_box,
                    size: 100,
                    color: (AppTheme.isDark) ? Colors.white : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sem contatos",
                    style: TextStyle(
                      color: (AppTheme.isDark) ? Colors.white : Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: Global.allcontacts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('informacoes', arguments: Global.allcontacts[i]);
                  },
                  leading: CircleAvatar(
                    backgroundImage: (Global.allcontacts[i].image != null)
                        ? FileImage(Global.allcontacts[i].image as File)
                        : null,
                  ),
                  title: Text(
                    "${Global.allcontacts[i].nome} ${Global.allcontacts[i].sobrenome}",
                    style: TextStyle(
                        color: (AppTheme.isDark) ? Colors.white : Colors.black),
                  ),
                  subtitle: Text(
                    "+55 ${Global.allcontacts[i].telefone} ",
                    style: TextStyle(
                        color: (AppTheme.isDark) ? Colors.white : Colors.black),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.phone),
                    color: Colors.green,
                    onPressed: () async {
                      Uri url = Uri.parse(
                          "Tel: +55 ${Global.allcontacts[i].telefone}");

                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Não foi possível cadastrar"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
    );
  }
}
