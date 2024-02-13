import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';
import 'package:ppo/componentes/gradient.dart';

class newPassword extends StatefulWidget {
  const newPassword({super.key});

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    dynamic _senha = '0';
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
                    height: size.height * 0.3,
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
                                'Escreva sua nova senha',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              )
                            ],
                          ),
                          TextFormField(
                            validator: (String? dados) {
                              if (dados == null) {
                                return 'Senha nao pode estar vazia';
                              } else if (dados.length < 6) {
                                return 'Senha muito curta';
                              }
                              _senha = dados;
                              return null;
                            },
                            decoration: getInputdecoration('Senha'),
                          ),
                          TextFormField(
                            decoration: getInputdecoration('Confirmar Senha'),
                            validator: (String? dados2) {
                              if (dados2 == _senha) {
                                return null;
                              } else {
                                return 'senha Incorreta';
                              }
                            },
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
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              'Confirmar',
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
