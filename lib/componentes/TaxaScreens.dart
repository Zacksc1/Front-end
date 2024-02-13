import 'package:flutter/material.dart';
import 'package:ppo/componentes/formStyle.dart';

Column not(BuildContext context, double size) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 300,
        width: 300,
        child: Image.asset('assets/images/cross.png'),
      ),
      Text(
        'Recarga não Concluida',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      espacoH(30),
      Container(
        width: size,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/recarga');
          },
          child: Text(
            'Tentar novamente',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        width: size,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/recarga');
          },
          child: Text(
            'Encerrar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

Column yes(BuildContext context, double size) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 300,
        width: 300,
        child: Image.asset('assets/images/visto.png'),
      ),
      Text(
        'Recarga Concluida',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      espacoH(30),
      Container(
        width: size,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/recarga');
          },
          child: Text(
            'Realizar outra recarga',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        width: size,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/recarga');
          },
          child: Text(
            'Encerrar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

Column taxaPaga(BuildContext context, double size) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Image.asset('assets/images/visto.png'),
            ),
            Text(
              'A taxa foi paga',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      Container(
        width: size,
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: size,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: Text(
                    'Voltar ao inicio',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              width: size,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/newPass');
                },
                child: Text(
                  'Novo passe',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Column taxaNaoPaga(BuildContext context, double size) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Image.asset('assets/images/cross.png'),
            ),
            Text(
              'A taxa nao foi paga',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      Container(
        width: size,
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: size,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/qrCodeTaxa');
                  },
                  child: Text(
                    'Tentar novamente',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              width: size,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: Text(
                    'Voltar ao inicio',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              width: size,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/newPass');
                },
                child: Text(
                  'Novo passe',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
