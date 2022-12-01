import 'dart:io';

import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'globels.dart';
import 'model_class.dart';

class EditarContato extends StatefulWidget {
  const EditarContato({Key? key}) : super(key: key);

  @override
  State<EditarContato> createState() => _EditarContato();
}

class _EditarContato extends State<EditarContato> {
  GlobalKey<FormState> _editarContatokey = GlobalKey<FormState>();

  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController sobrenomeCtrl = TextEditingController();
  TextEditingController telefoneCtrl= TextEditingController();
  TextEditingController emailCtrl = TextEditingController();

  String? nome;
  String? sobrenome;
  String? telefone;
  String? email;
  File? image;

  TextStyle mystyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;

    nomeCtrl.text = data.nome;
    sobrenomeCtrl.text = data.sobrenome;
    telefoneCtrl.text = data.telefone;
    emailCtrl.text = data.email;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add",
          style:
              TextStyle(color: (AppTheme.isDark) ? Colors.white : Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();

            nomeCtrl.clear();
            sobrenomeCtrl.clear();
            telefoneCtrl.clear();
            emailCtrl.clear();

            setState(() {
              nome = "";
              sobrenome = "";
              telefone = "";
              email = "";
            });
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (_editarContatokey.currentState!.validate()) {
                  _editarContatokey.currentState!.save();

                  Contato c = Contato(
                    nome: nome,
                    sobrenome: sobrenome,
                    telefone: telefone,
                    email: email,
                    image: image,
                  );

                  int i = Global.allcontacts.indexOf(data);

                  Global.allcontacts[i] = (c);

                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('inicio', (route) => false);
                }
              },
              icon: const Icon(Icons.check))
        ],
      ),
      body: Form(
        key: _editarContatokey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Nome",
                  style: mystyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: nomeCtrl,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Digite seu nome";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      nome = val;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Nome"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Last Name",
                  style: mystyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: sobrenomeCtrl,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Sobrenome";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      sobrenome = val;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Sobrenome"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Telefone",
                  style: mystyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: telefoneCtrl,
                  keyboardType: TextInputType.phone,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Digite seu telefone";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      telefone = val;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "(00)0000-0000"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: mystyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Digite seu e-mail";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Email"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
