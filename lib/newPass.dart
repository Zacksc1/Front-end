import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';

class newPass extends StatefulWidget {
  const newPass({super.key});

  @override
  State<newPass> createState() => _newPassState();
}

class _newPassState extends State<newPass> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
    Expanded(child: 
    PageView(
      children: [
        Container(
          child: Scaffold(
            body: Container(
                height: size.height ,
                width: size.height,
                decoration: BoxDecoration(
                  color: Color(0xff0ABFBC),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(),
                      Container(
                        height: size.height * 0.2,
                        width: size.width * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vamos lá',
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Text(
                              'Informe seus dados para a criaçao do seu novo passe',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.35,
                        width: size.width*0.8,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            formNewPassBottons(getInputdecoration('Nome')),
                            formNewPassBottons(getInputdecoration('CPF')),
                            formNewPassBottons(getInputdecoration('DataNasc')),
                            formNewPassBottons(getInputdecoration('Endereço')),
                          ],

                        ) 
                      )
                    ],
                  ),
                )),
          ),
        ),
        Container(
          child: Scaffold(
            body: Container(
              height: size.height * 1,
              width: size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xffF00000),
              ),
              child: Column(
                children: [
                  Row(),
                  Text('2',textAlign: TextAlign.center,style: TextStyle(fontSize: 60),)
                ],
                
              ),
            ),
          ),
        ),
        Container(
          child: Scaffold(
            body: Container(
              height: size.height * 1,
              width: size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xff0ABFBC),
              ),
              child: Column(
                children: [Row(),
                Text('3',textAlign: TextAlign.center,style: TextStyle(fontSize: 60),)],

              ),
            ),
          ),
        ),
        Container(
          child: Scaffold(
            body: Container(
              height: size.height * 1,
              width: size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xff0ABFBC),
              ),
              child: Column(
                children: [Row(),
                Text('4',textAlign: TextAlign.center,style: TextStyle(fontSize: 60),)],
              ),
            ),
          ),
        ),
      ],
    )

    );
     
  }
}
