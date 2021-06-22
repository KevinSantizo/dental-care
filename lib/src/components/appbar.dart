import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
 
  TextStyle _textStyle =  GoogleFonts.nunito(color: Colors.white, fontSize: 25.0); 
  TextStyle _textStyle2 =  GoogleFonts.nunito(color: Colors.white, fontSize: 15.0); 

  class AppBarComponent extends StatelessWidget {
    const AppBarComponent({Key key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      final _screenSize = MediaQuery.of(context).size;
      return Container(
        child:  SliverAppBar(
          backgroundColor: Color(0xFF59BEB6),
          title: Row(
            children: [
              Icon(MdiIcons.toothOutline, size: 35.0, color: Colors.white,),
              VerticalDivider(),
              Text('SantiDent', style: _textStyle),
            ],
          ),
          automaticallyImplyLeading: false,
          expandedHeight: _screenSize.height * 0.18,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            background: SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                padding: EdgeInsets.only(top: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi, Username', style: _textStyle,),
                            Divider(height: 5.0,),
                            Text('Hope you are well today!', style: _textStyle2),
                          ],
                        ),
                        Image.asset('assets/images/avatar.png', height: _screenSize.height * 0.08,)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ),
        )
      );
    }
  }
