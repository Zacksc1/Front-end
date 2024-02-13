import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';
import 'package:ppo/componentes/profile_data.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  final imagePicker = ImagePicker();
  File? imageFile;

  pick(ImageSource source) async {
    final pickedFile = await imagePicker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: allColor()),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                          color: Colors.white,
                        )),
                    Text(
                      'Edit',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/menu');
                        },
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.grey[200],
                    child: CircleAvatar(
                      radius: 140,
                      backgroundImage:
                          imageFile != null ? FileImage(imageFile!) : null,
                    ),
                  ),
                  Positioned(
                    bottom: 27,
                    right: 27,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                child: Wrap(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.delete),
                                      title: Text('Remover Foto de Perfil'),
                                      onTap: () {
                                        setState(() {
                                          imageFile = null;
                                        });

                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.photo),
                                      title: Text('Escolher da Galeria'),
                                      onTap: () {
                                        pick(ImageSource.gallery);
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.camera),
                                      title: Text('Tirar Foto'),
                                      onTap: () {
                                        pick(ImageSource.camera);
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: Column(children: [
                        dataProfile2('Nome:'),
                        dataProfile2('DataNasc'),
                        dataProfile2('Email'),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                              style: editBottonsStyle(Colors.green),
                              onPressed: () {},
                              child: Text(
                                'Confirmar',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              style: editBottonsStyle(Colors.red),
                              onPressed: () {},
                              child: Text(
                                'Cancelar',
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ]))),
            ],
          ),
        ),
      ),
    );
  }
}
