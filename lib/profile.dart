import 'package:flutter/material.dart';
import 'package:ppo/componentes/gradient.dart';
import 'package:ppo/componentes/profile_data.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                      'Perfil',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit');
                        },
                        child: Text('Edit',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)))
                  ],
                ),
              ),

              Stack(
                children: [
                  CircleAvatar(
                     radius: 150,
                     backgroundColor: Colors.grey[200],

                    child:CircleAvatar(
                radius: 140,
                backgroundImage: AssetImage('assets/images/eu.jpg'),
              ),
                  )
                ],
              ),
              
              SizedBox(
                height: 50,
              ),
              Expanded(
                  child: Container(
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: Column(children: [
                        dataProfile('Nome:'),
                        dataProfile('DataNasc'),
                        dataProfile('Cadastro'),
                        dataProfile('Email'),
                        dataProfile('Validade do passe'),
                      ]))),
            ],
          ),
        ),
      ),
    );
  }
}
