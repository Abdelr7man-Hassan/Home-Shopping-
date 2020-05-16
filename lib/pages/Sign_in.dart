import 'package:flutter/material.dart';

//import 'package:may_god_be_with_u/pages/loading.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Color abcolor=Color(0xFF003300);
  Color bgcolor=Color(0xffffebee);
  Color fgcolor=Color(0xFFffcc00);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Allah',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: abcolor
      ),
      backgroundColor: bgcolor,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: Column(
//          mainAxisAlignment: MainAxisAlignment.values(0.0,10.0,0.0,10.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.amberAccent[900],
                        fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                      hintText: ' enter your username or phone number',
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
//                      border: new UnderlineInputBorder(
//                        borderSide: new BorderSide(color: Colors.red),
//                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                      color:fgcolor,
                        fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
//                  border: InputBorder.none,
                      hintText: ' enter your password',
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
//                      border: new UnderlineInputBorder(
//                        borderSide: new BorderSide(color: Colors.red),
//                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                   Navigator.pushNamed(context, '/home');
                    },
//              icon:Icon(Icons.home),
                    child: Text('Sign In'),
                    color: abcolor,
                    splashColor: Colors.grey,
                    textColor: bgcolor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                        )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                        )),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
//              icon:Icon(Icons.home),
                    child: Text('Create New Account'),
                    color: Colors.lightGreenAccent[400],
                    splashColor: Colors.grey,
                    textColor: bgcolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
