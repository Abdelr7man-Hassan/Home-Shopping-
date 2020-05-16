import 'package:flutter/material.dart';
import 'pages/loading.dart';
import 'pages/Sign_in.dart';
import 'pages/Sign_up.dart';
import 'pages/home.dart';
import 'pages/vegetables.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/signIn',
    routes:{
      '/': (context)=> loading(),
      '/signIn':(context) =>SignIn(),
      '/signUp':(context) => SignUp(),
      '/home':(context) =>homePage(),
      '/vegetables':(context)=>vegepage(),
    },
));
