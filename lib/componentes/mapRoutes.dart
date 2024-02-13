
import 'package:ppo/block_pass.dart';
import 'package:ppo/bo.dart';
import 'package:ppo/edit.dart';
import 'package:ppo/escolha.dart';
import 'package:ppo/login.dart';
import 'package:ppo/menu.dart';
import 'package:ppo/newPass.dart';
import 'package:ppo/newPassword.dart';
import 'package:ppo/password.dart';
import 'package:ppo/Recarga.dart';
import 'package:ppo/profile.dart';
import 'package:ppo/qrCode.dart';
import 'package:ppo/qrCodeTaxa.dart';
import 'package:ppo/register.dart';
import 'package:ppo/taxa.dart';
import 'package:ppo/transaction.dart';
import 'package:ppo/welcome.dart';



  mapRoutes() {
  return {
    '/': (context) => welcome(),
    '/login': (context) => login(),
    '/register': (context) => register(),
    '/menu': (context) => menu(),
    '/profile': (context) => profile(),
    '/block_pass': (context) => block_pass(),
    '/recarga': (context) => Recarga(),
    '/edit':(context) => edit(),
    '/newPass':(context)=> newPass(),
    '/password':(context)=>password(),
    '/transaction':(context)=>transaction(),
    '/qrCode':(context)=>qrCode(),
    '/taxa':(context)=>taxa(),
    '/qrCodeTaxa':(context)=>qrCodeTaxa(),
    '/bo':(context)=>bo(),
    '/escolha':(context)=>escolha(),
    '/LoginR': (context) => login(),
    '/newPassword':(context)=>newPassword(),
  };
}
