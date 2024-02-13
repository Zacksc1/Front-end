import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    return MaterialApp(
      home: Scaffold(
       
          body:SingleChildScrollView(
            child:Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: allColor(),
        ),
        child: Center(
          child: Container(
            width: size.width * 0.8,
            height: size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: size.width,
                    height: size.height * 0.5,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Redefinir Senha',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                            textAlign: TextAlign.start,
                          ),
                          Wrap(
                            children: [
                              Text(
                                'Informe seu Email para enviarmos um codigo para redefinir sua senha',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              )
                            ],
                          ),
                          TextFormField(
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
                            decoration: getInputdecoration('Email'),
                          ),
                          Text(
                              'Cole o codigo que enviamos para o seu email aqui',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
                          TextFormField(
                            decoration: getInputdecoration('Codigo'),
                          )
                        ],
                      ),
                    )),
                Container(
                  width: size.width,
                  height: size.height * 0.16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.07,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/newPassword');
                            },
                            child: Text(
                              'Enviar Codigo',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      ),
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.07,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ) ,)
           ),
    );
  }
}
