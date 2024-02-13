import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController senhaControler = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(gradient: allColor()),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          width: 280,
                          height: 250,
                          child: Column(
                            children: [
                              Image.asset('assets/images/image.png'),
                              Text('Fast Pass',
                                  style: TextStyle(
                                    fontSize: 60,
                                  ))
                            ],
                          ),
                        ),
                        Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: TextFormField(
                                    controller: nameControler,
                                    decoration: getInputdecoration('Email'),
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
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: TextFormField(
                                    controller: senhaControler,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(fontSize: 20),
                                      fillColor: Colors.white.withOpacity(0.4),
                                      filled: true,
                                      hintText: 'senha',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                      }

                                      return null;
                                    },
                                    obscureText:
                                        _showPassword == false ? true : false,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/password');
                                    },
                                    child: Text(
                                      'Esqueceu sua senha ?',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        backgroundColor:
                                            Colors.black.withOpacity(0.7),
                                        padding:
                                            EdgeInsets.fromLTRB(70, 10, 70, 10),
                                      ),
                                      onPressed: () {
                                        
                                        if (_formkey.currentState!.validate()) {
                                          Navigator.pushNamed(context, '/menu');
                                        } else {}
                                      },
                                      child: Text(
                                        'Entrar',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                ),
                              ],
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text('Nao possui uma conta ? Cadastre-se',
                                style: TextStyle(color: Colors.black))),
                      ]),
                ))),
      ),
    );
  }

  entrarClicado() {
    if (_formkey.currentState!.validate()) {
      print('form valido');
    } else {
      print('form invalido');
    }
  }
}
