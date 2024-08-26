import 'package:flutter/material.dart';

InputDecoration getInputdecoration(String label) {
  return InputDecoration(
      hintStyle: TextStyle(fontSize: 20),
      fillColor: Colors.white.withOpacity(0.4),
      filled: true,
      hintText: label,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
      contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10));
}

formNewPassBottons(InputDecoration decoration) {
  return TextFormField(decoration: decoration);
}

formMenuBottons(String nome, dynamic size, String rota, BuildContext context,
    AssetImage icone) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4), // Cor da sombra
          spreadRadius: 1, // Expansão da sombra
          blurRadius: 8, // Desfoque da sombra
          offset: Offset(4, 4), // Deslocamento da sombra
        ),
      ],
    ),
    height: size.height * 0.09,
    width: size.width * 0.8,
    child: ElevatedButton(
        style: menuBottonsStyle(),
        onPressed: () {
          Navigator.pushNamed(context, rota);
        },
        child: Row(
          children: [
            Container(
              height: size.height * 0.08,
              width: size.width * 0.25,
              child: Image(image: icone),
            ),
            SizedBox(),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
              ),
              height: double.infinity,
              alignment: Alignment.center,
              child: Text(
                nome,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )),
          ],
        )),
  );
}

formNFC(String nome, dynamic size, String rota, BuildContext context,
    AssetImage icone) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4), // Cor da sombra
          spreadRadius: 1, // Expansão da sombra
          blurRadius: 8, // Desfoque da sombra
          offset: Offset(4, 4), // Deslocamento da sombra
        ),
      ],
    ),
    height: size.height * 0.09,
    width: size.width * 0.8,
    child: ElevatedButton(
        style: menuBottonsNFC(),
        onPressed: () {
          Navigator.pushNamed(context, rota);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Image(image: icone),
            ),
            Text(
              nome,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              width: 1,
            )
          ],
        )),
  );
}

menuBottonsNFC() {
  return ElevatedButton.styleFrom(
    backgroundColor: Color(0xff26AD34),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}

menuBottonsStyle() {
  return ElevatedButton.styleFrom(
      backgroundColor: Color(0xffFC354C),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(0));
}

editBottonsStyle(Colors) {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}

checkboxStyle(String nome, State state, dynamic check) {
  return;
}

espacoH(double size) {
  return SizedBox(
    height: size,
  );
}

espacoW(double size) {
  return SizedBox(
    width: size,
  );
}

BottonsStyle() {
  return ElevatedButton.styleFrom(
      backgroundColor: Color(0xffA82929),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(0));
}

Bottons(
  String nome,
  dynamic size,
  String rota,
  dynamic cor,
  BuildContext context,
  AssetImage icone,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4), // Cor da sombra
          spreadRadius: 1, // Expansão da sombra
          blurRadius: 8, // Desfoque da sombra
          offset: Offset(4, 4), // Deslocamento da sombra
        ),
      ],
    ),
    height: size.height * 0.08,
    width: size.width * 0.7,
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, rota);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: cor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: size.height * 0.07,
              width: size.width * 0.25,
              child: Image(image: icone),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Expanded(
                child: Text(nome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )))
          ],
        )),
  );
}
