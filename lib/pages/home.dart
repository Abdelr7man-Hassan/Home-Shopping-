import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:homeshopping/servises/data.dart';
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  proData data;

Color abcolor=Color(0xFF003300);
Color bgcolor=Color(0xffffebee);
Color fgcolor=Color(0xFFffcc00);
Color langColor=Colors.black;
var engTitles=['Vegetables','Fruits','Dairy'];
var arbTitles=['خضراوات','فاكهة','منتجات ألبان' ];
var Titles=['Vegetables','Fruits','Dairy'] ;
  @override
  Widget build(BuildContext context) {
//    Titles=engTitles;
    return Scaffold(
      body :Container(
        decoration:new BoxDecoration(color:bgcolor),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
                pinned: true,
                shape:ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(180),
                    bottomRight: Radius.circular(180)
                  )
                ),
              backgroundColor: abcolor,
              flexibleSpace:FlexibleSpaceBar(
//                title: Text(
//                    'choose category',
//                  style :TextStyle(
//                    color:abcolor,
//                  )
//                ),
                background: Image.asset(
                    'assets/appbar.jpg',
                    fit:BoxFit.fitWidth,
                ),
              ) ,

            ),
            SliverToBoxAdapter(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:new BoxDecoration(
                        borderRadius: new BorderRadius.circular(45),
                        color: fgcolor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:AssetImage('assets/vegetables.jpg'),
                            radius: 35.0,
                          ),
                          Text(
                              '${Titles[0]}',
                            style: TextStyle(
                              fontSize: 30.0
                            ),
                          ),
                          IconButton(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, '/vegetables',arguments: {
                                'category':Colors.green,
                                'language':langColor,
                                'abcolor':abcolor,
                                'bgcolor':bgcolor,
                                'fgcolor':fgcolor,

                              });
                            },
                            icon :Icon(Icons.subdirectory_arrow_right,
                            ),
                            color: abcolor,
                            iconSize: 30.0,
                            splashColor: Colors.greenAccent,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:new BoxDecoration(
                        borderRadius: new BorderRadius.circular(45),
                        color: fgcolor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:AssetImage('assets/fruits.jpg'),
                            radius: 35,
                          ),
                          Text(
                              '${Titles[1]}',
                            style :TextStyle(
                              fontSize:30.0,
                            )

                          ),
                          IconButton(
                            onPressed: (){

                              Navigator.pushReplacementNamed(context, '/vegetables',arguments: {
                                'category':Colors.red,
                                'language':langColor,
                                'abcolor':abcolor,
                                'bgcolor':bgcolor,
                                'fgcolor':fgcolor,
                              });
                              },
                            icon :Icon(Icons.subdirectory_arrow_right,
                            ),
                            color: abcolor,
                            splashColor: Colors.greenAccent,
                            iconSize: 30.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:new BoxDecoration(
                        borderRadius: new BorderRadius.circular(45),
                        color: fgcolor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:AssetImage('assets/dairy.jpg'),
                            radius: 35,
                          ),
                          Text(
                              '${Titles[2]}',
                            style:TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                          IconButton(
                            onPressed: (){
                            },
                            icon :Icon(Icons.subdirectory_arrow_right,
                            ),
                            color: abcolor,
                            splashColor: Colors.greenAccent,
                            iconSize: 30.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      floatingActionButton: FloatingActionButton(
//        onPressed: () { },
//          backgroundColor:fgcolor,
////        tooltip: 'Increment',
//        child: Icon(Icons.add),
//        elevation: 2.0,
//      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: bgcolor,
        buttonBackgroundColor: fgcolor,
        color: abcolor,
        index:1,
        height:50.0,
        items: <Widget>[
            Icon(
              Icons.menu,
              size: 30.0,
              color: bgcolor,
            ),
            Icon(
            Icons.home,
              size: 30.0,
              color:bgcolor,
            ),
            Icon(
              Icons.search,
              size: 30.0,
              color: bgcolor,
            ),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap:(index){
          setState(() {
           if (index==0)
             {
               abcolor=Color(0xFF1D3557);
               bgcolor=Color(0xffa8dadc);
               fgcolor=Color(0xFFE63946);
              }
           else if(index==1)
           {
             abcolor=Color(0xFF003300);
             bgcolor=Color(0xffffebee);
             fgcolor=Color(0xFFffcc00);
           }
           else
             {
               abcolor=Color(0xFF0B032D);
               fgcolor=Color(0xFFFFB997);
               bgcolor=Color(0xFF843b62);
             }
          });
        },

      ),
        drawer:new Drawer(

        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text(
                  "Abdelrhman Hassan",
                    style:TextStyle(color:fgcolor,)
                ),
                accountEmail: Text("Abdelr7man.hassan@gmail.com",style:TextStyle(color:fgcolor,)),
              arrowColor: fgcolor,
              decoration:new BoxDecoration(
                image: new DecorationImage(image:new AssetImage('assets/sliding side.jpg'), fit: BoxFit.fill,)
              ),
            ),
            new ListTile(
              title:new Text('English'),
              trailing: Icon(Icons.text_rotation_none),
              onTap: () {
                setState(() {
                  Titles= engTitles;
                  langColor=Colors.black;
                });
              },
            ),
            new Divider(
              color: Colors.black,
            ),
            new ListTile(
              title:new Text('العربية'),
              trailing: Icon(Icons.format_color_text),
              onTap: () {
                setState(() {
                  Titles=arbTitles;
                  langColor=Colors.white;
                });
              },
            ),
      ],
        ),
    ),
//      BottomAppBar(
//        child: Row(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            IconButton(
//              iconSize: 30.0,
//              color: fgcolor,
////              padding: EdgeInsets.only(left: 40.0,right: 40.0),
//              onPressed:(){
//                setState(() {
//                  abcolor=Color(0xFF003300);
//                  bgcolor=Color(0xffffebee);
//                  fgcolor=Color(0xFFffcc00);
//                });
//              },
//                icon:Icon(Icons.home),
//            ),
//            IconButton(
//              iconSize: 30.0,
//              color:fgcolor,
////              padding: EdgeInsets.only(left: 40.0,right: 40.0),
//              onPressed:(){
//                setState(() {
//                  abcolor=Color(0xFF1D3557);
//                  bgcolor=Color(0xffa8dadc);
//                  fgcolor=Color(0xFFE63946);
//                });
//              },
//              icon:Icon(Icons.home),
//            ),
//            IconButton(
//              iconSize: 30.0,
//              color: fgcolor,
////              padding: EdgeInsets.only(left:40.0,right: 40.0),
//              onPressed:(){
//                setState(() {
//                  abcolor=Color(0xFF0B032D);
//                  fgcolor=Color(0xFFFFB997);
//                  bgcolor=Color(0xFF843b62);
//                });
//              },
//              icon:Icon(Icons.search),
//            ),
//          ],
//        ),
//        shape: CircularNotchedRectangle(),
//        color: abcolor,
////        notchMargin: 45,
//      ),
    );
  }
}

