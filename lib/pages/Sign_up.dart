import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color abcolor=Color(0xFF003300);
  Color bgcolor=Color(0xffffebee);
  Color fgcolor=Color(0xFFffcc00);
  List<String> hintText;
  var hintList= ['First Name','Surname','Safe Account','Birthday','Phone Number','Password','confirm Password'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: abcolor,
              pinned:true,
              shape:ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45)
                  )
              ),
              expandedHeight: 100.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('Get Start'),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: () { Navigator.pushNamed(context, '/signIn'); },
                ),
              ]
          ),

          SliverToBoxAdapter(
            child: SizedBox(
//                height: 1000,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: ' Enter your first name ',
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color:fgcolor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: ' enter your surname',
                        labelText: 'Surname',
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: fgcolor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType:TextInputType.emailAddress,
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: ' enter your email',
                        labelText: 'Safe Account',
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: fgcolor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType:TextInputType.datetime,
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: ' enter your birthdate',
                        labelText: 'birthday',
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: fgcolor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType:TextInputType.number,
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
//                  border: InputBorder.none,
                        hintText: ' enter your phone number',
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          fontSize: 15,
//                    color: Colors.blue,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color:fgcolor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: ' enter your password',
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color:fgcolor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.amberAccent[900],
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: ' enter your password',
                        labelText: 'confirm password',
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: fgcolor),
                        ),
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
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: abcolor,
                      splashColor: Colors.grey,
                      textColor: bgcolor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




