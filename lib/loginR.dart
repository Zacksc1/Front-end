import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';

import 'package:ppo/componentes/gradient.dart';

class LoginR extends StatefulWidget {
  const LoginR({Key? key}) : super(key: key);

  @override
  State<LoginR> createState() => _LoginState();
}

class _LoginState extends State<LoginR> {
  TextEditingController nameController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                  Expanded(
                    child: Container(
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image.png'),
                          Text(
                            'Fast Pass',
                            style: TextStyle(fontSize: size.width * 0.1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              controller: nameController,
                              decoration:getInputdecoration('Email'),
                              validator: (String? dados) {
                                if (dados == null) {
                                  return 'Email não pode estar vazio';
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
                              controller: senhaController,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: size.width * 0.05),
                                fillColor: Colors.white.withOpacity(0.4),
                                filled: true,
                                hintText: 'Senha',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
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
                                  return 'Senha não pode estar vazia';
                                } else if (dados.length < 6) {
                                  return 'Senha muito curta';
                                }
                                return null;
                              },
                              obscureText: _showPassword == false ? true : false,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: Text(
                              'Esqueceu sua senha ?',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 1),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: Colors.black.withOpacity(0.7),
                                padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/menu');
                                } else {}
                              },
                              child: Text(
                                'Entrar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.04,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Não possui uma conta? Cadastre-se',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
