import 'package:flutter/material.dart';
import 'package:myticketghsample/SizeConfig.dart';
import 'package:myticketghsample/air.dart';
import 'package:myticketghsample/bus.dart';
import 'package:myticketghsample/events.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';
import 'package:myticketghsample/pages.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(

          leading: Builder(
            builder: (context) => IconButton(
              icon:Icon(Icons.menu, color: Colors.white,size: 35,),

              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 24),
          ),
          backgroundColor:   Color(0xFFF03801),
          elevation: 0.0,


          centerTitle: true,
        ),
        drawer: Container(


          width: MediaQuery.of(context).size.width / 1.25,
          child: Drawer(

            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [


                    Color(0xFFFFFFFF),
                    Color(0xFFFFFFFF),
                    Color(0xFFFF8B01),
                    Color(0xFFFF8B01),
                    Color(0xFFFA6F01),
                    Color(0xFFF55301),
                    Color(0xFFF03801),
                    Color(0xFFF03801),
                  ],
                  stops: [0.25,0.27, 0.34,0.35, 0.37, 0.4,0.5, 0.9],
                ),
              ),
              child: Column(

                children: <Widget>[
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*1,
                  ),
                  DrawerHeader(
                    child: Container(
                      //color: Colors.white,
                        height: SizeConfig.safeBlockVertical*25,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/myticket.png",
                        )),

                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*8,
                  ),
                  GestureDetector(
                    onTap: () {

                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                        Icon(FontAwesomeIcons.home, size: 20,color: Colors.white,),
                        SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            fontWeight: FontWeight.w600, color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "Cart"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(FontAwesomeIcons.shoppingCart, size: 20,color: Colors.white,),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'Cart',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "My Tickets"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(FontAwesomeIcons.ticketAlt, size: 20,color: Colors.white,),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'My Tickets',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "Notification"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'Notification',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "About Us"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(FontAwesomeIcons.infoCircle, size: 20,color: Colors.white,),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'About Us',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "Contact Us"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(FontAwesomeIcons.phone, size: 20,color: Colors.white,),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'Contact Us',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*6,
                  ),
                  Divider(height: SizeConfig.safeBlockVertical*1,color: Colors.white,thickness: 1,),

                  SizedBox(
                    height: SizeConfig.safeBlockVertical*1,
                  ),
                  Text(
                    'Account & Purchases',
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700, color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "Register"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(FontAwesomeIcons.addressCard, size: 20,color: Colors.white,),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'Register',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*3,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {

                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => pages(value: "Login"),
                              transitionDuration: Duration(seconds: 0),
                            ),);

                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                          Icon(FontAwesomeIcons.key, size: 20,color: Colors.white,),
                          SizedBox(width: SizeConfig.safeBlockHorizontal*8,),
                          Text(
                            'Login',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600, color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*5,
                  ),

                  Material(
                    borderRadius: BorderRadius.circular(500),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(500),
                      splashColor: Colors.black45,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back, color: Colors.deepOrange),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ),
        ),
        body:Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListView(
                children: [
                  SizedBox(


                    height: SizeConfig.safeBlockVertical * 2,
                  ),



                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => bus()
                      ));
                    },
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2),
                      height: SizeConfig.safeBlockVertical*29,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          children: [
                            Container(
                              height: SizeConfig.safeBlockVertical*100,
                              width: SizeConfig.safeBlockHorizontal*100,

                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                image: DecorationImage(
                                  image: AssetImage("assets/bus2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),),
                            Container(
                              color: Colors.black26,
                              child: Center(
                                child:  OutlineButton(


                                  child:Container(
                                    width: SizeConfig.safeBlockHorizontal*70,
                                    height: SizeConfig.safeBlockVertical*7,
                                    color: Colors.black.withOpacity(0.5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Icon(FontAwesomeIcons.bus, size: 27,color: Colors.white,),
                                        SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                        Text(
                                          'BUS TICKETS',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22,
                                            height:SizeConfig.safeBlockVertical * 0.09,
                                          ),
                                        ),

                                      ],
                                    ) ,
                                  ),
                                  highlightedBorderColor: Colors.white,
                                  disabledBorderColor: Colors.white,
                                  borderSide: BorderSide(width:3,color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),


                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(


                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>events(),
                          transitionDuration: Duration(seconds: 0),
                        ),);
                    },
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2),
                      height: SizeConfig.safeBlockVertical*29,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          children: [
                            Container(
                              height: SizeConfig.safeBlockVertical*100,
                              width: SizeConfig.safeBlockHorizontal*100,

                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                image: DecorationImage(
                                  image: AssetImage("assets/party1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),),
                            Container(
                              color: Colors.black26,
                              child: Center(
                                child:  OutlineButton(


                                  child:Container(
                                    width: SizeConfig.safeBlockHorizontal*70,
                                    height: SizeConfig.safeBlockVertical*7,
                                    color: Colors.black.withOpacity(0.5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Icon(FontAwesomeIcons.wineBottle, size: 27,color: Colors.white,),
                                        Icon(FontAwesomeIcons.wineGlass, size: 27,color: Colors.white,),

                                        Icon(FontAwesomeIcons.bandcamp, size: 27,color: Colors.white,),
                                        SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                        Text(
                                          'EVENTS TICKETS',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22,
                                            height:SizeConfig.safeBlockVertical * 0.09,
                                          ),
                                        ),

                                      ],
                                    ) ,
                                  ),
                                  highlightedBorderColor: Colors.white,
                                  disabledBorderColor: Colors.white,
                                  borderSide: BorderSide(width:3,color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),


                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(


                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>air()
                      ));
                    },
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2),
                      height: SizeConfig.safeBlockVertical*29,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          children: [
                            Container(
                              height: SizeConfig.safeBlockVertical*100,
                              width: SizeConfig.safeBlockHorizontal*100,

                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                image: DecorationImage(
                                  image: AssetImage("assets/airline1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),),
                            Container(
                              color: Colors.black26,


                              child: Center(

                                child:  OutlineButton(



                                  child:Container(
                                    width: SizeConfig.safeBlockHorizontal*70,
                                    height: SizeConfig.safeBlockVertical*7,
                                    color: Colors.black.withOpacity(0.4),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Icon(FontAwesomeIcons.plane, size: 27,color: Colors.white,),
                                        SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                        Text(
                                          'AIR TICKETS',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,

                                          ),
                                        ),

                                      ],
                                    ) ,
                                  ),

                                  highlightedBorderColor: Colors.white,
                                  disabledBorderColor: Colors.white,
                                  borderSide: BorderSide(width:3,color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),


                                ),
                              ),
                            )
                          ],
                        ),
                      ),
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
