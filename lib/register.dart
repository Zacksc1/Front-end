import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController senhaControler = TextEditingController();
  TextEditingController confirmaSenhaControler = TextEditingController();
  bool _showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    dynamic _password = 0;
    final size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(gradient: allColor()),
          height: size.height,
          width: size.width,
          child: Center(
            child: Container(
              height: size.height * 0.9,
              width: size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: size.width * 0.65,
                    height: size.height * 0.4,
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                        height: size.height * 0.342,
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: size.width,
                              child: TextFormField(
                                controller: nameControler,
                                decoration: getInputdecoration('Nome'),
                                style: TextStyle(color: Colors.black),
                                validator: (String? dados) {
                                  if (dados == null) {
                                    return 'Nome nao pode estar vazio';
                                  } else if (dados.length < 3) {
                                    return 'Nome muito curto';
                                  } else if (dados.length > 15) {
                                    return 'Nome muito grande';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              width: size.width,
                              child: TextFormField(
                                controller: emailControler,
                                decoration: getInputdecoration('Email'),
                                style: TextStyle(color: Colors.black),
                                validator: (String? dados) {
                                  if (dados == null) {
                                    return 'Email nao pode estar vazio';
                                  } else if (dados.length < 6) {
                                    return 'Email muito curto';
                                  } else if (!dados.contains('@')) {
                                    return 'O email precisa ter um @';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              width: size.width,
                              child: TextFormField(
                                controller: senhaControler,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 20),
                                  fillColor: Colors.white.withOpacity(0.4),
                                  filled: true,
                                  hintText: 'Senha',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  suffixIcon: GestureDetector(
                                    child: Icon(_showPassword == false
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onTap: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    },
                                  ),
                                ),
                                validator: (String? dados1) {
                                  if (dados1 == null) {
                                    return 'Senha nao pode estar vazia';
                                  } else if (dados1.length < 6) {
                                    return 'Senha muito curta';
                                  } else {
                                    _password == dados1;
                                    return null;
                                    
                                  }
                                },
                                obscureText:
                                    _showPassword == false ? true : false,
                              ),
                            ),
                            Container(
                              width: size.width,
                              child: TextFormField(
                                controller: confirmaSenhaControler,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 20),
                                  fillColor: Colors.white.withOpacity(0.4),
                                  filled: true,
                                  hintText: 'Verificar Senha',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  suffixIcon: GestureDetector(
                                    child: Icon(_showPassword == false
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onTap: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    },
                                  ),
                                ),
                                validator: (String? dados) {
                                  if (dados == null) {
                                    return 'Senha nao pode estar vazia';
                                  } else if (dados.length < 6) {
                                    return 'Senha muito curta';
                                  } else if (confirmaSenhaControler.text == senhaControler.text) {
                                    return null;
                                  } else {
                                    return 'senha diferente';
                                  }
                                },
                                obscureText:
                                    _showPassword == false ? true : false,
                              ),
                            ),
                          ],
                        )),
                  ),
                  Column(
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.06,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.7),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/menu');
                              } else {}
                            },
                            child: Text(
                              'Cadastre-se',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Já possui uma conta ? Faça login',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
