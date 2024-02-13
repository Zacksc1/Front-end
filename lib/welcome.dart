import 'package:flutter/material.dart';
import 'package:ppo/componentes/gradient.dart';

class welcome extends StatelessWidget {
  welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: allColor(),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height*0.01,
                ),
                Column(children: [ 
                  Image.asset('assets/images/image.png'),
                Text(
                  'Fast Pass',
                  style: TextStyle(fontSize: size.height*0.08),
                ),
                ],),
                
                Container(
                  height: size.height*0.06,
                  width: size.width*0.5,
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.8),
                     
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Junte-se a nós',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )), 
                )
                
              ],
            ),
          )),
    );
  }
}
