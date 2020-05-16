import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeshopping/servises/data.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class vegepage extends StatefulWidget {
  @override
  _vegepageState createState() => _vegepageState();
}

class _vegepageState extends State<vegepage> {
  proData data1 ;
  var TP=['3.0','5.0'];
  var arbVegeData=['طماطم','خيار','فلفل','جزر','بذنجان','ليمون','كوسة','بصل','اسعار الخضراوات'];
  var vegetables=['tomato','cucumber','pepper','carrot','aubergine','lemon','zucchini','onion','Vegetables Prices','vegetables1'];
  var arbFriutData=['فرولة','بطيخ','تفاح','برتقال','توت','موز','جوافة','خوخ','اسعار الفاكهة'];
  var friuts=['strawberry','watermelon','apple','orange','blueberry','banana','guava','peache','Fruits Prices','fruits1'];
 var data;
 var langData;
  @override
  Widget build(BuildContext context) {
    Map catlang =ModalRoute.of(context).settings.arguments;
    if (catlang['category']==Colors.green && catlang['language']==Colors.black) {
      data = vegetables;
      langData=vegetables;
    }
    else if (catlang['category']==Colors.green && catlang['language']==Colors.white) {
      data = vegetables;
      langData=arbVegeData;
    }
    else if (catlang['category']!=Colors.green && catlang['language']==Colors.black) {
      data = friuts;
      langData=friuts;
    }
    else if (catlang['category']!=Colors.green && catlang['language']==Colors.white) {
      data = friuts;
      langData=arbFriutData;
    }
        return Scaffold(
          body:Container(
            color: catlang['bgcolor'],
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: Text('${langData[8]}'),
                  centerTitle: true,
                  pinned:true,
                  expandedHeight: 100.0,
//              shape : CircularNotchedRectangle(),
                  backgroundColor: catlang['abcolor'],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/${data[9]}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.red[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[0]}.jpg'),
                              ),
                              Text(
                                '${langData[0]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //////////////////////
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.green[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[1]}.jpg'),
                              ),
                              Text(
                                '${langData[1]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ///////////////////
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.redAccent[700]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[2]}.jpg'),
                              ),
                              Text(
                                '${langData[2]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //////////////////////////////
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.orange),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[3]}.jpg'),
                              ),
                              Text(
                                '${langData[3]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ////////////////////4
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.pink[900]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[4]}.jpg'),
                              ),
                              Text(
                                '${langData[4]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //////////////5
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.yellowAccent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[5]}.jpg'),
                              ),
                              Text(
                                '${langData[5]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ///////////////////6
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.limeAccent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[6]}.jpg'),
                              ),
                              Text(
                                '${langData[6]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ////////////////////////////////////////////7
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: new BorderRadius.circular(45),
                              color: Colors.pinkAccent[400]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/${data[7]}.jpg'),
                              ),
                              Text(
                                '${langData[7]}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(
                                Icons.credit_card,
                                size: 20.0,
                              ),
                              Text(
                                '${TP[0]} LE -> ${TP[1]} LE ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //////////
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: catlang['bgcolor'],
            buttonBackgroundColor: catlang['fgcolor'],
            color: catlang['abcolor'],
            index:1,
            height:50.0,
            items: <Widget>[
              Icon(
                Icons.menu,
                size: 30.0,
                color: catlang['bgcolor'],
              ),
              Icon(
                Icons.home,
                size: 30.0,
                color:catlang['bgcolor'],
              ),
              Icon(
                Icons.search,
                size: 30.0,
                color: catlang['bgcolor'],
              ),
            ],
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 200),
            onTap:(index){
              setState(() {
                if (index==0)
                {
                  catlang['abcolor']=Color(0xFF1D3557);
                  catlang['bgcolor']=Color(0xffa8dadc);
                  catlang['fgcolor']=Color(0xFFE63946);
                }
                else if(index==1)
                {
                  catlang['abcolor']=Color(0xFF003300);
                  catlang['bgcolor']=Color(0xffffebee);
                  catlang['fgcolor']=Color(0xFFffcc00);
                }
                else
                {
                  catlang['abcolor']=Color(0xFF0B032D);
                  catlang['fgcolor']=Color(0xFFFFB997);
                  catlang['bgcolor']=Color(0xFF843b62);
                }
              });
            },

          ),
//          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//          floatingActionButton: FloatingActionButton(
//            onPressed: () { },
//            backgroundColor:catlang['fgcolor'],
////        tooltip: 'Increment',
//            child: Icon(Icons.add),
//            elevation: 2.0,
//          ),
//          bottomNavigationBar: BottomAppBar(
//            child: Row(
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                IconButton(
//                  iconSize: 30.0,
////              padding: EdgeInsets.only(left: 40.0,right: 40.0),
//                  onPressed:(){
//                    setState(() {
//                      catlang['abcolor']=Colors.teal;
//                      catlang['bgcolor']=Colors.yellow[50];
//                      catlang['fgcolor']=Colors.lime;
//                    });
//                  },
//                  icon:Icon(Icons.home),
//                ),
//                IconButton(
//                  iconSize: 30.0,
////              padding: EdgeInsets.only(left:40.0,right: 40.0),
//                  onPressed:(){
//                    setState(() {
//                      catlang['abcolor']=Colors.pink[900];
//                      catlang['fgcolor']=Colors.pink[50];
//                      catlang['bgcolor']=Colors.redAccent[100];
//                    });
//                  },
//                  icon:Icon(Icons.search),
//                ),
//              ],
//            ),
//            shape : CircularNotchedRectangle(),
//            color: catlang['abcolor'],
//
//          ),
        );
      }
}

