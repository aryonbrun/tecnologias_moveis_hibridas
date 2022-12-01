import 'dart:io';
import 'package:contact_diry/screens/globels.dart';
import 'package:contact_diry/screens/model_class.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../theme/app_theme.dart';

class NovoContato extends StatefulWidget {
  const NovoContato({Key? key}) : super(key: key);

  @override
  State<NovoContato> createState() => _NovoContato();
}

class _NovoContato extends State<NovoContato> {
  final ImagePicker _picker = ImagePicker();

  GlobalKey<FormState> contactkey = GlobalKey<FormState>();

  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController sobrenomeCtrl = TextEditingController();
  TextEditingController telefoneCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();

  String? nome;
  String? sobrenome;
  String? telefone;
  String? email;
  File? image;

  TextStyle texto = TextStyle(
    fontSize: 20,
    color: (AppTheme.isDark != true) ? Colors.black : Colors.white,
    fontWeight: FontWeight.w500,
  );

  Color cor1 = (AppTheme.isDark == true) ? Colors.white : Colors.white;
  Color cor2 = (AppTheme.isDark == true) ? Colors.white : Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: (AppTheme.isDark) ? Colors.black : Colors.white,
      appBar: AppBar(
        // backgroundColor: (AppTheme.isDark) ? Colors.black : Colors.white,
        title: Text(
          "Adicionar",
          // style: TextStyle(
          //     color: (AppTheme.isDark != true) ? Colors.black : Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: (AppTheme.isDark != true) ? Colors.black : Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (contactkey.currentState!.validate()) {
                  contactkey.currentState!.save();

                  Contato c1 = Contato(
                    nome: nome,
                    sobrenome: sobrenome,
                    telefone: telefone,
                    email: email,
                    image: image,
                  );

                  setState(() {
                    Global.allcontacts.add(c1);
                  });

                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('inicio', (route) => false);
                }
              },
              icon: const Icon(Icons.check))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: (image != null) ? FileImage(image!) : null,
                    backgroundColor: Colors.grey,
                    radius: 50,
                    child: Text(
                      (image != null) ? "" : "ADD",
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Adicionar foto.'),
                            actions: [
                              ElevatedButton(
                                onPressed: () async {
                                  XFile? pickedPhoto = await _picker.pickImage(
                                      source: ImageSource.gallery);
                                  setState(() {
                                    image = File(pickedPhoto!.path);
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Galeria"),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  XFile? pickedFile = await _picker.pickImage(
                                      source: ImageSource.camera);
                                  setState(() {
                                    image = File(pickedFile!.path);
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Camera"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    mini: true,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Form(
                key: contactkey,
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
                          "Nome:",
                          style: texto,
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
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Nome"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Sobrenome",
                          style: texto,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: sobrenomeCtrl,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Digite seu sobrenome";
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
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Sobrenome"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Telefone",
                          style: texto,
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
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "(00)0000-0000"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email",
                          style: texto,
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
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Email",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
